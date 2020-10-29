#define BAUD_RATE 115200

#define SHIFT_DATA 8
#define SHIFT_CLOCK 4
#define SHIFT_LATCH 2
#define SW_MODE 9
#define LED_STAR 3
#define LED_STAR_MIN 8
#define LED_STAR_MAX 64
#define LED_STAR_INCREMENT 10

#define MODE_FALLING 0
#define MODE_GROWING 1
#define MODE_RANDOM 2
#define MODE_FADE 3
#define MODE_MAX 3

int mode = -1;
unsigned long time_next = 0;

void setup() {
  Serial.begin(BAUD_RATE);
  pinMode(LED_STAR, OUTPUT);
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLOCK, OUTPUT);
  pinMode(SHIFT_LATCH, OUTPUT);
  pinMode(SW_MODE, INPUT_PULLUP);

  next_mode();
}

byte star_value = 0;
void set_values(byte star, byte data_a, byte data_b) {
  if (star_value != star) {
    analogWrite(LED_STAR, star);
    star_value = star;
  }
  shiftOut(SHIFT_DATA, SHIFT_CLOCK, MSBFIRST, data_b);
  shiftOut(SHIFT_DATA, SHIFT_CLOCK, MSBFIRST, data_a);
  digitalWrite(SHIFT_LATCH, LOW);
  digitalWrite(SHIFT_LATCH, HIGH);
  digitalWrite(SHIFT_LATCH, LOW);
}

bool fade_out = false;
int fade_star() {
  int value = star_value;

  if (fade_out) {
    value -= LED_STAR_INCREMENT;
    if (value < LED_STAR_MIN) {
      fade_out = false;
      value = LED_STAR_MIN;
    }
    return value;
  } else {
    value += LED_STAR_INCREMENT;
    if (value > LED_STAR_MAX) {
      fade_out = true;
      value = LED_STAR_MAX;
    }
    return value;
  }
}

bool old_switch_state = HIGH;
bool new_switch_state1 = HIGH;
bool new_switch_state2 = HIGH;
bool new_switch_state3 = HIGH;
void handle_switch() {
  new_switch_state1 = digitalRead(SW_MODE); delay(1);
  new_switch_state2 = digitalRead(SW_MODE); delay(1);
  new_switch_state3 = digitalRead(SW_MODE);

  if ((new_switch_state1 == new_switch_state2) && (new_switch_state1 == new_switch_state3)) {
    if (new_switch_state1 != old_switch_state) {
      if (new_switch_state1 == LOW) {
        next_mode();
      }
    }
    
    old_switch_state = new_switch_state1;
  }
}

void next_mode() {
  set_values(0, 0, 0);

  if (mode == -1) {
    set_mode(0);
  } else {
    mode += 1;
    if (mode > MODE_MAX) mode = 0;
  
    set_values(0, 1 << mode, 1 << mode);
    time_next = millis() + 3000;
    set_mode(mode);
  }
}

void set_mode(int number) {
  mode = number;
  Serial.print("Mode set to ");
  switch(mode) {
    case MODE_FALLING: Serial.println("FALLING"); break;
    case MODE_GROWING: Serial.println("GROWING"); break;
    case MODE_RANDOM: Serial.println("RANDOM"); break;
    case MODE_FADE: Serial.println("FADE"); break;
    default: Serial.println("UNKNOWN"); break;
  }
}

void handle_mode() {
  if (millis() > time_next) {
    switch(mode) {
      case MODE_FALLING: do_step_falling(); break;
      case MODE_GROWING: do_step_growing(); break;
      case MODE_RANDOM: do_step_random(); break;
      case MODE_FADE: do_step_fade_star(); break;
    }
  }

  // In case we forgot to schedule next step...
  if (millis() > time_next) time_next = millis() + 1000;
}

byte mode_falling_value = 0x00;
void do_step_falling() {
  if (mode_falling_value == 0x00) mode_falling_value = 0x01;
  else mode_falling_value = mode_falling_value << 1;
  set_values(fade_star(), mode_falling_value, mode_falling_value);
}

byte mode_growing_value = 0;
void do_step_growing() {
  byte value = 1;

  if (mode_growing_value == 0) {
    mode_growing_value++;
    value = 0;
  } else {
    for(int i = 0; i < mode_growing_value; i++) {
      value = value << 1;
      value += 1;
    }
    
    mode_growing_value++;
    if (mode_growing_value > 8) mode_growing_value = 0;
  }

  set_values(fade_star(), value, value);
  time_next = millis() + 1000;
}

byte mode_random_value_a = 0x00;
byte mode_random_value_b = 0x00;
void do_step_random() {
  switch(random(0, 6)) {
    case 0: mode_random_value_a = randomize_bit(mode_random_value_a); break;
    case 1: mode_random_value_b = randomize_bit(mode_random_value_b); break;
    default: break;
  }
  
  set_values(fade_star(), mode_random_value_a, mode_random_value_b);
  time_next = millis() + 250;
}

byte randomize_bit(byte current) {
  byte bit_num = random(0, 8);
  if (bitRead(current, bit_num) == 0) return bitSet(current, bit_num);
  return bitClear(current, bit_num);
}

void do_step_fade_star() {
  set_values(fade_star(), 0, 0);
  time_next = millis() + 200;
}

void loop() {
  handle_switch();
  handle_mode();
}
