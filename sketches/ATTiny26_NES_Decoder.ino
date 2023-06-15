/*
  NES Controller Button Reader
  Target Device: ATTiny26L
  Tested with Arduino IDE 1.8.13
  Requires ATTinyCore board file v2 or later for ATTiny26 support:  https://github.com/SpenceKonde/ATTinyCore

  Controller Button States:
  nesRegister [7..0] = [Right, Left, Down, Up, Start, Select, B, A]

  NES controller pinout:
               _________
             /          |
            /        O  | Ground
           /            |
     +VCC  |  O      O  | Clock
           |            |
     N.C.  |  O      O  | Latch
           |            |
     N.C.  |  O      O  | Data Out (To NES)
           |____________|

  ATTinyCore Pin Map

  ATTiny26 GPIO    Arduino Pin Number
      PA0                0
      PA1                1
      PA2                2
      PA3                3
      PA4                4
      PA5                5
      PA6                6
      PA7                7
      PB0                8
      PB1                9
      PB2               10
      PB3               11
      PB4               12
      PB5               13
      PB6               14
      PB7               15  (RESET)


  Gadget Reboot
*/


// bit positions of each controller button in the status register
const int A_BUTTON         = 0;
const int B_BUTTON         = 1;
const int SELECT_BUTTON    = 2;
const int START_BUTTON     = 3;
const int UP_BUTTON        = 4;
const int DOWN_BUTTON      = 5;
const int LEFT_BUTTON      = 6;
const int RIGHT_BUTTON     = 7;

const int shiftDelay       = 20;    // delay in microseconds to help with shift register setup/hold timing

byte nesRegister           = 255;   // store button states. 0=pressed 1=released  default all released

// NES Pins
const int nesClock          = 11;    // NES controller 4021 clock pin
const int nesLatch          = 12;    // NES controller 4021 latch pin
const int nesData           = 13;    // NES controller 4021 data pin

// Output pins
const int outputLeft           = 2;   // outputs to show controller button activity
const int outputUp             = 0;
const int outputDn             = 1;
const int outputRight          = 3;
const int outputSelect         = 4;
const int outputStart          = 5;
const int outputB              = 6;
const int outputA              = 7;
const int outputX              = 8;
const int outputY              = 9;
const int outputLT             = 10;
const int outputRT             = 14;


void setup()
{
  // configure NES pins
  pinMode(nesData, INPUT_PULLUP);
  pinMode(nesClock, OUTPUT);
  pinMode(nesLatch, OUTPUT);

  digitalWrite(nesClock, LOW);      // NES control lines idle low
  digitalWrite(nesLatch, LOW);

  digitalWrite(outputLeft, HIGH);
  digitalWrite(outputUp, HIGH);
  digitalWrite(outputDn, HIGH);
  digitalWrite(outputRight, HIGH);
  digitalWrite(outputSelect, HIGH);
  digitalWrite(outputStart, HIGH);
  digitalWrite(outputA, HIGH);
  digitalWrite(outputB, HIGH);

  pinMode(outputLeft, OUTPUT);
  pinMode(outputUp, OUTPUT);
  pinMode(outputDn, OUTPUT);
  pinMode(outputRight, OUTPUT);
  pinMode(outputSelect, OUTPUT);
  pinMode(outputStart, OUTPUT);
  pinMode(outputA, OUTPUT);
  pinMode(outputB, OUTPUT);
  pinMode(outputX, INPUT);        // not used on NES
  pinMode(outputY, INPUT);        // not used on NES
  pinMode(outputLT, INPUT);       // not used on NES
  pinMode(outputRT, INPUT);       // not used on NES
}

void loop()
{
  // read the 8 controller buttons into the nesRegister
  // NES controller button states are loaded into the 4021 while nesLatch is high
  // When nesLatch goes low, the first data bit is shifted to nesData
  // Button data is shifted to nesData on each low to high transition of nesClock

  digitalWrite(nesLatch, HIGH);       // latch button states into shift register
  delayMicroseconds(shiftDelay);      // impose a delay to allow a setup and hold time for any 4021 pins
  digitalWrite(nesLatch, LOW);

  for (int x = 0; x <= 7; x++) {                    // read in the 8 controller buttons that were latched
    bitWrite(nesRegister, x, digitalRead(nesData)); // store the current button states into the nesRegister
    digitalWrite(nesClock, HIGH);                   // generate a clock pulse
    delayMicroseconds(shiftDelay);
    digitalWrite(nesClock, LOW);
  }

  // assign the 8 NES controller button states to the outputs.
  // 0 = button pressed so set output port low
  digitalWrite(outputLeft   , bitRead(nesRegister, LEFT_BUTTON));
  digitalWrite(outputUp     , bitRead(nesRegister, UP_BUTTON));
  digitalWrite(outputDn     , bitRead(nesRegister, DOWN_BUTTON));
  digitalWrite(outputRight  , bitRead(nesRegister, RIGHT_BUTTON));
  digitalWrite(outputSelect , bitRead(nesRegister, SELECT_BUTTON));
  digitalWrite(outputStart  , bitRead(nesRegister, START_BUTTON));
  digitalWrite(outputB      , bitRead(nesRegister, B_BUTTON));
  digitalWrite(outputA      , bitRead(nesRegister, A_BUTTON));

}
