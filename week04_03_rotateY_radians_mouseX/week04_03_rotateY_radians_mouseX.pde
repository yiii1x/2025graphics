//week04-03-rotateY-radians-mouseX
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //rotateY(radians(mouseX));
  rotateX(radians(mouseY));
  box(200);
}
