//week06_7_push_RRT_many_TRT_inside_pop
//慢慢組出機械手臂
void setup(){
  size(500,800,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);//黑球是中心
  
  fill(252,131,77);
  pushMatrix();
    if(mousePressed&&mouseButton==RIGHT)rotateY(radians(frameCount));
    if(mousePressed&&mouseButton==RIGHT)rotateZ(radians(frameCount));
    translate(0,-100);
    box(50,200,25);
    pushMatrix();

      translate(0,-100);//step00
      //if(mousePressed)step00
      rotateZ(radians(frameCount));
      translate(100,0);
      box(200,50,25);//手肘
      pushMatrix();
        translate(100,0);
        rotateZ(radians(frameCount));
        translate(25,0,0);
        box(50,25,50);//小手腕
      popMatrix();
     popMatrix();
   popMatrix();
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);
}
