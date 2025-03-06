//week03-13-3D-pushMatrix-translate-sphere-popMatrix
void setup(){
  size(600,400,P3D);
}
void draw(){
  background(128);
  lights();
  pushMatrix();
    translate(300,100);
    sphere(100);
  popMatrix();
  pushMatrix();
    translate(100,100);
    sphere(100);
  popMatrix();
}
