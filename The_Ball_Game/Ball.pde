class Ball
{
  //declare variables
  private float _posX;
  private float _posY;
  
  //default constructor
  Ball ()
  {
    _posX = 0;
    _posY = 0;
  }
  //overloaded constructor
  Ball (float a, float b)
  {
    _posX = a;
    _posY = b;
  }
  
  public void drawBall()
  {
    fill(255);
    ellipse (_posX, _posY, 60,60);
  }
  
  public float moveBallInXDirection(float x)
  {
    if(x<370.0 && x>330.0)
    {
      return(_posX);
    }
    else if (x<330)
    {
      _posX = _posX-5; 
      return(_posX);
    }
    else if(x>370)
    {
      _posX = _posX + 5;
      return(_posX);
    }
  }
  
  public float moveBallInYDirection(float x)
  {
    if(x<370.0 && x>330.0)
    {
      _posY = _posY++;
      return(_posY);
    }
    else if (x<330)
    {
      _posY = _posY+5;
      return(_posY);
    }
    else if(x>370)
    {
      _posY = _posY + 5;
      return(_posY);
    }
  }
  //attempting to return two values from 1 function
  public float[] moveBall(float x)
  {
    if(x<370.0 && x>330.0)
    {
      float[] pos = new float[2];
      pos[0] = _posY++;
      pos[1] = _posX;
      return(pos);
    }
    else if (x<330)
    {
      float[] pos = new float[2];
      pos[0] = _posY+5;
      pos[1] = _posX-5; 
      return(pos);
    }
    else if(x>370)
    {
      float[] pos = new float[2];
      pos[0] = _posY + 5;
      pos[1] = _posX + 5;
      return(pos);
    }
  }
  //version 1 of update function using the returning 2 values function
  public void updateBall(float[] posY)
  {
    fill(255);
    ellipse (posY[1], posY[0], 60,60);  
  }
  //version 2 of update function using two separate functions to code for x and y value changes
  public void updateBall2(float posX, float posY)
  {
    fill(255);
    ellipse (posX, posY, 60, 60);  
  }
}