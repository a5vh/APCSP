//setup
void setup()
{
  PShape s;
  size(1000,500);//changed screen size
  strokeWeight(5);//changed line thickness
}

void draw()
{
  color c = #CC5500;
  noFill();
  ellipse(100, 40, 20, 30);
  fill(c);
  text("Click the mouse to place a square", 0,12);
  if(mousePressed)
  {
    quad(mouseX-60, mouseY+60, mouseX+60, mouseY+60, mouseX+60, mouseY-60, mouseX-60, mouseY-60);
  }
  System.out.println(mouseX + " , " + mouseY);
}
