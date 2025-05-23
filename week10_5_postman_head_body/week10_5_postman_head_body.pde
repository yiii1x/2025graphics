//week10_5_postman_head_body
PImage postman,head,body,uparm1,hand1,uparm2,hand2;
float[] angle=new float[20];
int ID=0;
void mouseDragged(){
  angle[ID]+=mouseX-pmouseX;
}
void keyPressed(){
  if(key=='1') ID=1;
  if(key=='2') ID=2;
  if(key=='3') ID=3;
  if(key=='4') ID=4;
  if(key=='5') ID=5;
  if(key=='6') ID=6;
  if(key=='0') ID=0;
}
void setup(){
  size(560,560);
  postman=loadImage("postman.png");
  head=loadImage("head.png");
  body=loadImage("body.png");
  uparm1=loadImage("uparm1.png");
  hand1=loadImage("hand1.png");
  uparm2=loadImage("uparm2.png");
  hand2=loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);//基礎的郵差
  fill(255,0,255,128);//半透明的紫色
  rect(0,0,560,560);//蓋上去
  pushMatrix();
    translate(185,261);//放回去正確的位置
    rotate(radians(angle[1]));
    translate(-185,-261);//把頭的旋轉中心放到0,0
    image(uparm1,0,0);
  popMatrix();
  pushMatrix();
    translate(116,265);//放回去正確的位置
    rotate(radians(angle[2]));
    translate(-116,-265);//把頭的旋轉中心放到0,0
    image(hand1,0,0);
  popMatrix();
  pushMatrix();
    translate(290,262);//放回去正確的位置
    rotate(radians(angle[5]));
    translate(-290,-262);//把頭的旋轉中心放到0,0
    image(uparm2,0,0);
  popMatrix();
  pushMatrix();
    translate(357,259);//放回去正確的位置
    rotate(radians(angle[3]));
    translate(-357,-259);//把頭的旋轉中心放到0,0
    image(uparm2,0,0);
  popMatrix();
  pushMatrix();
    translate(236,231);//放回去正確的位置
    rotate(radians(angle[4]));
    translate(-236,-231);//把頭的旋轉中心放到0,0
    image(head,0,0);//在畫出頭
  popMatrix();
  pushMatrix();
    translate(236,231);
    rotate(radians(angle[0]));
    translate(-236,-231);
    image(body,0,0);
   popMatrix();
}
