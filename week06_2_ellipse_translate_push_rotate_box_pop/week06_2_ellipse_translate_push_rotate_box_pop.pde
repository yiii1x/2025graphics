//week06_2_ellipse_translate_push_rotate_box_pop
//把物體放到轉盤的中心
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  
  translate(width/2,height/2);//把東西放到畫面中心
  pushMatrix();
    //要按下滑鼠才轉動
    if(mousePressed)rotateZ(radians(frameCount));//對著下面中心旋轉
    translate(-50,0,0);//把棒子往左移一半讓右端放在正中心
    box(100,30,30);//橫的棒子
   popMatrix();
}
