//week06_6_push_box_push_TRT_box_push_T_R_T_box
//慢慢組出機械手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();
    box(50,200,25);
    pushMatrix();
      translate(x,y);//step03掛到手臂上
      if(mousePressed)rotateZ(radians(frameCount));//step02把旋轉放入
      translate(100,0);//step01把手肘的移動量放入
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
