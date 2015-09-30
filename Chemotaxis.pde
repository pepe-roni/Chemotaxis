Chemotaxis[] colony;

void setup()
{
  colony = new Chemotaxis [99];
  size(300,300);
    for(int i=0; i<colony.length;i++)
  {
  colony[i] = new Chemotaxis(); 
  }
}

void draw()
{
  background(0);
  for(int i=0; i<colony.length;i++)
  {
  colony[i] = new Chemotaxis(); 
    colony[i].move();
    colony[i].show();
  }
}

class Chemotaxis
{
  int x,y;
  Chemotaxis()
  {
    x=150;
    y=150;
  }
  void move()
  {
    x = x +(int)(Math.random()*3)-1;
    y = y +(int)(Math.random()*3)-1;
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(x,y,20,20);
  }
}
