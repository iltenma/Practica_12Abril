import processing.serial.*;
Serial myPort;
String val;
int valorFinal = 0;

void setup () {
 size (600, 600);
  println (Serial.list()); // nos permitira saber que puerto estamos utilizando en el ordenador
 String portName = Serial.list()[1];
 myPort = new Serial (this, portName, 9600);
}

void draw (){                                       
  
  background (0);
    if (myPort.available() > 0) {
      val = myPort.readStringUntil('\n');
    } if (val != null) {
        valorFinal = Integer.parseInt(val.trim());
        println (valorFinal);
  
    }
  textSize (24);
  fill (255, 130, 240);
  text (valorFinal, 50, 50);
  ellipse (height/2, width/2, valorFinal, valorFinal);

if (keyPressed){
  if (keyCode == BACKSPACE) {
   fill (255);
}
    
    }


/*void keyPressed () {
if (keyCode == BACKSPACE) {
   fill (255);
  } else if (keyCode == ENTER){
    fill (255);
    
    }
 }*/