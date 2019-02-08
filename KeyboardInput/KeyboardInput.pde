//setup
void setup()
{
  PShape s;
  size(1000,500);//changed screen size
  strokeWeight(5);//changed line thickness
  background(255);
}

void draw()
{
  if(keyPressed)
  {
    if(key == 'f')
    {
      background(255);
    }
    if (key == 'c')
    {
      if (mousePressed)
      {
        color r = color(255,0,0);
        fill(r);
        ellipse(mouseX, mouseY, 55, 55);
      }
    }
    
    if (key == 's')
    {
       color g = color(0,255,0);
       fill(g);
       if(mousePressed)
        {
          quad(mouseX-60, mouseY+60, mouseX+60, mouseY+60, mouseX+60, mouseY-60, mouseX-60, mouseY-60);
        }
    }
    
    if (key == 'r')
    {
      color b = color(0,0,255);
      fill(b);
      if(mousePressed)
      {
        quad(mouseX-80, mouseY+40, mouseX+80, mouseY+40, mouseX+80, mouseY-40, mouseX-80, mouseY-40);
      }
    }
  }
  System.out.println(mouseX + " , " + mouseY);
}
