void setup() {
 size(500,500);
 massivePoint(width, 200, 1000);
}


void massivePoint(int startPointX, int startPointY, int lineCount) {
  float[] pointsArrX = new float[lineCount];
  pointsArrX[0] = startPointX;
  float[] pointsArrY = new float[lineCount];
  pointsArrY[0] = startPointY;  
  for (int i = 1; i < pointsArrX.length; ++i) {
   pointsArrX[i] = random(0, width);
   pointsArrY[i] = random(0, width);
  }
  for (int iter = 0; iter < pointsArrX.length-1; ++iter) {
    line(pointsArrX[iter], pointsArrY[iter], pointsArrX[iter+1], pointsArrY[iter+1]);
  }
  for (int coords = 0; coords < pointsArrX.length; ++coords) {
    ellipse(pointsArrX[coords], pointsArrY[coords], 10, 10);
  }
  println(pointsArrX, pointsArrY);
}


