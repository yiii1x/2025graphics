//week03-10-3D-random-point
float[]x=new float[5000];
float[]y=new float[5000];
float[]z=new float[5000];
void setup(){
  size(400,400,P3D);
  for(int i=0;i<5000;i++){
    x[i]=random(400);
    y[i]=random(400);
    z[i]=random(-400,400);
  }
}
void draw(){
  background(0);
  stroke(255);
  translate(0,0,mouseY);
  for(int i=0;i<5000;i++){
    point(x[i],y[i],z[i]);
  }
}
