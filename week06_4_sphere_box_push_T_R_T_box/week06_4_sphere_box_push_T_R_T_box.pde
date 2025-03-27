//week06_4_sphere_box_push_T_R_T_box
//慢慢組出機械手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//step00
  translate(width/2,height/2);//step00
  sphere(10);//step04放個圓球
  
  box(200,50,25);//step05手肘
  
  fill(252,131,77);
  pushMatrix();//step03
    translate(x,y);
    if(mousePressed)rotateZ(radians(frameCount));//step03
    translate(25,0,0);//step02往右推，讓左端放在中心
    box(50,25,50);//step01
   popMatrix();//step03
}
float x=0,y=0;//step06
void mouseDragged(){//step06
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//step07印出來
}
