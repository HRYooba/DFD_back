import netP5.*;
import oscP5.*;

OscP5 oscP5;
float luminance;

void setup() {
  oscP5 = new OscP5(this, 5555);
  oscP5.plug(this, "getData", "/message");
  fullScreen();
}

public void getData(float data) {
  luminance = 255 - data;
}

void draw() {
  background(0);
  fill(luminance);
  ellipse(width / 2, height / 2, 300, 300);
  ellipse(width / 2 + 400, height / 2, 300, 300);

}