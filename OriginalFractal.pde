public void setup()
{
  size(600,600);
}

public void draw()
{
  background(0);
  noStroke();
  myFractal(300, 300, 300);
}

public void myFractal(float x, float y, float d)
{
  ellipse(x, y, d, d);
  if (d > 10)
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myFractal(x+d/2, y, d/2);
    myFractal(x-d/2, y, d/2);
    myFractal(x, y+d/2, d/2);
    myFractal(x, y-d/2, d/2);
  }

}