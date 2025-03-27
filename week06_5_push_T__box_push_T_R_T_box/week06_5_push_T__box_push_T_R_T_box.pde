//week06_5_push_T-_box_push_T_R_T_box
//慢慢組出機械手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();//step04新的一組
    translate(x,y);//step05新的轉動
    box(200,50,25);//step05手肘
    pushMatrix();
      translate(100,0);//step01把前一步發現的100.0放好
      rotateZ(radians(frameCount));//step把if刪掉
      translate(25,0,0);//往右推，讓左端放在中心
      box(50,25,50);//小手腕
    popMatrix();//step03把程式往右
   popMatrix();
}
float x=0,y=0;//會動的位置
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//印出來
}
