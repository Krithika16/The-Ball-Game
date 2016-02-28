/*

The Ball Game
by Krithika and Bette

*/

//Instantiating the class
Ball ball;

void setup()
{
  size(700,700);
  background(0);
  
  ball = new Ball(350.0,0.0);
}

void draw()
{
  background(0);
  ball.drawBall();
  //using function returning 2 values - either use this function or the one below 
  ball.updateBall(ball.moveBall(mouseX));
  //using two separate functions returning 2 separate values
  ball.updateBall2(ball.moveBallInXDirection(mouseX), ball.moveBallInYDirection(mouseX));
}