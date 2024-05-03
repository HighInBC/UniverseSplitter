#include <Adafruit_NeoPixel.h>

#define NEO_PIN            8
#define SIGNAL_PIN         2
#define BUTTON_PIN         3

#define STATE_SLEEP        0
#define STATE_COUNT_1      1
#define STATE_COUNT_2      2
#define STATE_COUNT_3      3
#define STATE_DISPLAY      4

#define DEBOUNCE_INTERVAL  10
#define INTERVAL_TOLERANCE 25
#define LED_BIT_1          PC0
#define LED_BIT_2          PC1
#define LED_BIT_3          PC2
#define LEDS_ON            ((1 << LED_BIT_1) | (1 << LED_BIT_2) | (1 << LED_BIT_3))
#define DISPLAY_SOLID      2000
#define DISPLAY_FADE       3000

Adafruit_NeoPixel strip(1, NEO_PIN, NEO_GRB + NEO_KHZ800);

volatile unsigned long eventTimes[3];
volatile int state = STATE_SLEEP;
volatile unsigned long interruptDebounce = 0;
unsigned long display_start = 0;

void setup() {
  DDRC |= LEDS_ON;
  strip.begin();
  strip.show();
  strip.setBrightness(50);
  strip.setPixelColor(0, strip.Color(0, 0, 0));
  
  pinMode(SIGNAL_PIN, INPUT_PULLUP);
  pinMode(BUTTON_PIN, INPUT);
  attachInterrupt(digitalPinToInterrupt(SIGNAL_PIN), eventDetected, FALLING);
  attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), wakeUp, RISING);
}

void wakeUp() {
  if (state != STATE_SLEEP) return;
  state = STATE_COUNT_1;
}

void eventDetected() {
  if (state == STATE_DISPLAY || state == STATE_SLEEP) return;
  unsigned long timeStamp = millis();
  if (timeStamp - interruptDebounce < DEBOUNCE_INTERVAL) return;
  interruptDebounce = timeStamp;
  eventTimes[state-1] = timeStamp;
  state++;
}

void loop() {
  switch (state) {
    case STATE_SLEEP: enterSleepMode(); break;
    case STATE_COUNT_1:
    case STATE_COUNT_2:
    case STATE_COUNT_3: handleCountState(); break;
    case STATE_DISPLAY: handleDisplayState(); break;
  }
}

void enterSleepMode() {
  PORTC = 0;
  sleep_mode();
}

void handleCountState() {
  unsigned long blink = millis() / 8 % 20 == 0;
  unsigned char led_bits = 0;
  led_bits |= (state > STATE_COUNT_1 ? 1 : blink) << LED_BIT_1;
  led_bits |= (state > STATE_COUNT_2 ? 1 : blink) << LED_BIT_2;
  led_bits |= (state > STATE_COUNT_3 ? 1 : blink) << LED_BIT_3;
  PORTC = led_bits;
}

void handleDisplayState() {
  if (display_start == 0) display_start = millis();
  PORTC |= LEDS_ON;
  signed long display_age = millis() - display_start;
  unsigned int intensity = display_age < DISPLAY_SOLID ? 255 : map(display_age, DISPLAY_SOLID, DISPLAY_SOLID + DISPLAY_FADE, 255, 0);
  unsigned long AB_time = eventTimes[1] - eventTimes[0];
  unsigned long BC_time = eventTimes[2] - eventTimes[1];
  if (abs(AB_time - BC_time) < INTERVAL_TOLERANCE) { // Too close to call, try again
    display_start = 0;
    state = STATE_COUNT_1;
    return;
  }
  if (AB_time < BC_time) {
    strip.setPixelColor(0, strip.Color(intensity, 0, 0));
  } else {
    strip.setPixelColor(0, strip.Color(0, intensity, 0));
  }
  if (display_age > DISPLAY_SOLID + DISPLAY_FADE) {
    display_start = 0;
    state = STATE_SLEEP;
    strip.setPixelColor(0, strip.Color(0, 0, 0));
  }
  strip.show();
}
