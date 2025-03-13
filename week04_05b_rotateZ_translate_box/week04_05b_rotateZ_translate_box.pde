//week04-05b-rotateZ-translate-box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  //translate(width/2,height/2);
    translate(mouseX,mouseY);
    rotateZ(radians(frameCount));
    translate(0,-50);
    box(10,100,10);
}
