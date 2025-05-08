//week12_7_sound1_sound2
import processing.sound.*;
SoundFile sndInGame,sndIntro,sndMonkey,sndSword;
void setup(){
  size(400,400);
  sndInGame=new SoundFile(this,"In Game Music.mp3");
  sndIntro=new SoundFile(this,"Intro Song_Final.mp3");
  sndMonkey=new SoundFile(this,"Monkey 1.mp3");
  sndSword=new SoundFile(this,"sword slash.mp3");
  sndIntro.play();
}
boolean playingIntro=true;
void keyPressed(){
  if(playingIntro){
    sndIntro.stop();
    sndInGame.play();
    playingIntro=false;
  }else{
    playingIntro=true;
  }
}
void mousePressed(){
  if(mouseButton==LEFT) sndSword.play();
  if(mouseButton==RIGHT) sndMonkey.play();
}
void draw(){
  
}
