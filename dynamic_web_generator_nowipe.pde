#test push
void setup() {
 background(255);
 size(1000, 1000, P3D);
 //massivePoint(width, 200, 10, 20, 5000);
}
 float lastLineX = 0;
 float lastLineY = 0;
 float lastLineZ = 0;
 float nextLineX = 0;
 float nextLineY = 0;
 float nextLineZ = 0;
 int lineLimit = 1000
 int i = 0;




void draw() {
  nextLineX = random(0, width);
  nextLineY = random(0, height);
  nextLineZ = random(0, 100);
  stroke(0);
  line(lastLineX, lastLineY, lastLineZ, nextLineX, nextLineY, nextLineZ);
  noStroke();
  lights();
  translate(lastLineX, lastLineY, lastLineZ);
  sphere(10);
  lastLineX = nextLineX;
  lastLineY = nextLineY;
  lastLineZ = nextLineZ;
  /*i = i + 1; //uncomment for wipe screen after some limit
  if (i == lineLimit) {
    background(255);
    i = 0;
    }*/

  println(nextLineX, nextLineY, nextLineZ, i);
}
