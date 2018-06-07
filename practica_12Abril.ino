int Valorpot = 0;

void setup() {
Serial.begin (9600);
}

void loop() {
Valorpot = analogRead (0);
Serial.println (Valorpot);
delay (150);

}
