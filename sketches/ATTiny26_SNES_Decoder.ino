/*
  SNES Controller Button Reader
  Target Device: ATTiny26L
  Tested with Arduino IDE 1.8.13
  Requires ATTinyCore board file v2 or later for ATTiny26 support:  https://github.com/SpenceKonde/ATTinyCore

  Controller Button States:
  snesRegister [11..0] = [RT, LT, X, A, Right, Left, Down, Up, Start, Select, Y, B]

  SNES controller pinout:
               ________________
              | 0 0 0 0 | 0 0 0 )
               ----------------
                + C L D   N N G
                V L A A   C C N
                  K T T       D
                    C A
                    H

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
const int B_BUTTON               = 0;
const int Y_BUTTON               = 1;
const int SELECT_BUTTON          = 2;
const int START_BUTTON           = 3;
const int UP_BUTTON              = 4;
const int DOWN_BUTTON            = 5;
const int LEFT_BUTTON            = 6;
const int RIGHT_BUTTON           = 7;
const int A_BUTTON               = 8;
const int X_BUTTON               = 9;
const int LEFT_TRIGGER_BUTTON    = 10;
const int RIGHT_TRIGGER_BUTTON   = 11;

const int shiftDelay  = 20;  // delay in microseconds to help with shift register setup/hold timing

int snesRegister;            // SNES controller button states. 0=pressed 1=released

// SNES Pins
int snesClock      = 11;      // SNES controller clock pin
int snesLatch      = 12;      // SNES controller latch pin
int snesData       = 13;      // SNES controller data pin

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
  // configure SNES pins
  pinMode(snesData, INPUT_PULLUP);
  pinMode(snesClock, OUTPUT);
  pinMode(snesLatch, OUTPUT);

  digitalWrite(snesClock, LOW);      // SNES control lines idle low
  digitalWrite(snesLatch, LOW);

  digitalWrite(outputLeft, HIGH);
  digitalWrite(outputUp, HIGH);
  digitalWrite(outputDn, HIGH);
  digitalWrite(outputRight, HIGH);
  digitalWrite(outputSelect, HIGH);
  digitalWrite(outputStart, HIGH);
  digitalWrite(outputA, HIGH);
  digitalWrite(outputB, HIGH);
  digitalWrite(outputX, HIGH);
  digitalWrite(outputY, HIGH);
  digitalWrite(outputLT, HIGH);
  digitalWrite(outputRT, HIGH);

  pinMode(outputLeft, OUTPUT);
  pinMode(outputUp, OUTPUT);
  pinMode(outputDn, OUTPUT);
  pinMode(outputRight, OUTPUT);
  pinMode(outputSelect, OUTPUT);
  pinMode(outputStart, OUTPUT);
  pinMode(outputA, OUTPUT);
  pinMode(outputB, OUTPUT);
  pinMode(outputX, OUTPUT);
  pinMode(outputY, OUTPUT);
  pinMode(outputLT, OUTPUT);
  pinMode(outputRT, OUTPUT);
}

void loop()
{
  // read the 12 controller buttons into the snesRegister
  // SNES controller button states are loaded into the 4021 while snesLatch is high
  // When snesLatch goes low, the first data bit is shifted to snesData
  // Button data is shifted to snesData on each low to high transition of snesClock

  digitalWrite(snesLatch, HIGH);      // latch button states into shift register
  delayMicroseconds(shiftDelay);      // impose a delay to allow a setup and hold time for any 4021 pins
  digitalWrite(snesLatch, LOW);

  for (int x = 0; x <= 11; x++) {                     // read in the 12 controller buttons that were latched
    bitWrite(snesRegister, x, digitalRead(snesData)); // store the current button states into the snesRegister
    digitalWrite(snesClock, HIGH);                    // generate a clock pulse
    delayMicroseconds(shiftDelay);
    digitalWrite(snesClock, LOW);
  }

  // assign the SNES controller button states to the outputs.
  // 0 = button pressed so set output port low
  digitalWrite(outputLeft   , bitRead(snesRegister, LEFT_BUTTON));
  digitalWrite(outputUp     , bitRead(snesRegister, UP_BUTTON));
  digitalWrite(outputDn     , bitRead(snesRegister, DOWN_BUTTON));
  digitalWrite(outputRight  , bitRead(snesRegister, RIGHT_BUTTON));
  digitalWrite(outputSelect , bitRead(snesRegister, SELECT_BUTTON));
  digitalWrite(outputStart  , bitRead(snesRegister, START_BUTTON));
  digitalWrite(outputB      , bitRead(snesRegister, B_BUTTON));
  digitalWrite(outputA      , bitRead(snesRegister, A_BUTTON));
  digitalWrite(outputX      , bitRead(snesRegister, X_BUTTON));
  digitalWrite(outputY      , bitRead(snesRegister, Y_BUTTON));
  digitalWrite(outputLT      , bitRead(snesRegister, LEFT_TRIGGER_BUTTON));
  digitalWrite(outputRT      , bitRead(snesRegister, RIGHT_TRIGGER_BUTTON));

}
