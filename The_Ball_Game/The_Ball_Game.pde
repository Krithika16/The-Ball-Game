/*

The Ball Game (the world's most creative name)
by Krithika and Bette

*/
PImage scrollIMG;
PImage trianglesIMG;
float xPosScroll;
float yPosScroll;
float xPos;
float yPos;

void setup()
{
  frameRate(10);
  background (0);
  size (500, 1200);
  trianglesIMG = loadImage ("other.png");
  scrollIMG = loadImage ("scroll.jpg");
  yPosScroll = 0;
  xPosScroll = 0;
  xPos = 0;
  yPos = 800;
}
float posX = 350;
float posY = 0;
void draw()
{
  image (scrollIMG, xPosScroll, yPosScroll);
  yPosScroll = yPosScroll - 0.2;
  image (trianglesIMG, xPos, yPos);
  yPos = yPos-5;
  fill(255);
  fill(255);
  ellipse (posX, posY, 60,60);
  
  if(mouseX<370 && mouseX>330)
  {
    posY = posY + 1;
    //posX = 350;
  }
  if (mouseX<330)
  {
    posX = posX - 5;
    posY = posY +5;
  }
  if(mouseX>370)
  {
    posX = posX + 5;
    posY = posY + 5;
  }
}