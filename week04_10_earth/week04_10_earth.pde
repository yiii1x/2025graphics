//week04-10-earth
size(400,400,P3D);
PShape earth=createShape(SPHERE,100);
PImage img=loadImage("earth.jpg");
earth.setTexture(img);
shape(earth);
