int x= 15;
int y=587;
int k=15;
int g=587;
int r=15;
int z=825;
int c=7;
int u=587;
int score1=0;
int score2=0;  
int winScore = 100;
color colorL = color(0,0,0);
color colorR = color(0, 0, 0); 
import processing.sound.*;
SoundFile file;

void setup()
{ 
 size(900,650);
 file = new SoundFile(this, "1.mp3"); 
file.play();
}      

void draw() 
{ 
  PImage img = loadImage("3.jpg");
  image(img, 0, 0, 900, 650);
  PImage img1 = loadImage("1.png");
  image(img1, x, y, 70, 70);
  PImage img2 = loadImage("2.png");
  image(img2, k, g, 70, 70);
  text("Девочка:"+score1,20,10);
  text("Мальчик:"+score2,20,20);
   gameOver();
  {   if (score1 == winScore) {x=15;}
      if (score1 == winScore) {y=587;}
      if (score1 == winScore) {k=15;}
      if (score1 == winScore) {g=587;}
  }
  { 
      if (score2 == winScore) {k=15;}
      if (score2 == winScore) {g=587;} 
      if (score2 == winScore) {x=15;}
      if (score2 == winScore) {y=587;}
  }
}

void gameOver()
{
  if(score1 == winScore)
  {
    PImage img3 = loadImage("Девочка.png");
  image(img3,320, 200, 300, 200);
  }
  
  if(score2 == winScore) 
  {
  PImage img4 = loadImage("Мальчик.png");
  image(img4, 320, 200, 300, 200);
  }
       
  if(mousePressed) 
  {
    score1 = 0;
    score2 = 0;
  }
      
}

void gameOverPage(String text, color c)
{ 
  fill(255,0,0);
  text("Game over", width/2, height/2 - 40);
  text("Click to play again", width/2, height/2 + 40);
  fill(c);
  text(text, width/2, height/2);
  
  if(mousePressed)
  {
    score1 = 0;
    score2 = 0;
  }
  
}

 void keyPressed() 
{
  {
    if ( key == CODED ) 
    { 
     if ( keyCode == RIGHT) 
      {
       x += 90;score1++;
      } 
     else if ( keyCode == LEFT ) 
      {
       x -= 90;score1++;
      } 
     else if ( keyCode == UP ) 
      {
       y -= 65;score1++;
      } 
     else if ( keyCode == DOWN ) 
      {
       y += 65;score1++;
      } 
x = constrain( x, r, z );
y = constrain( y, c, u);
    }
     {
       if ( keyCode == 68) 
      { 
        k += 90;score2++;
      } 
       else if ( keyCode == 65 ) 
      { 
        k -= 90;score2++;
      } 
       else if ( keyCode == 87 ) 
      { 
        g -= 65;score2++;
      } 
       else if ( keyCode == 83 ) 
      { 
        g += 65;score2++;
      } 
k = constrain( k, r, z );
g = constrain( g, c, u );
     }
  }
}