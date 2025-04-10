//week08-1-loadshape-shape
size(400,400,P3D);//要有P3D
PShape gundam=loadShape("Gundam.obj");//讀入3D模型
translate(width/2,height/2);//放到畫面中心
pushMatrix();
  translate(0,100);
  scale(10,-10,10);//把模型放大，上下顛倒
  shape(gundam,0,0);//畫出3D模型
popMatrix();
