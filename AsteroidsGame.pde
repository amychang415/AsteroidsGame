Spaceship ship;
public void setup() 
{
	size(500, 500);
	ship = new Spaceship();

}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
}

public void keyPressed()
	{
		if (key == 'a')
		{
			ship.turn(-20);
		}
		if (key == 'd')
		{
			ship.turn(20);
		}
		if (key == 'w')
		{
			ship.accelerate(1);
		}
		if (key == 'r')
		{
			ship.setX((int)(Math.random()*width));
			ship.setY((int)(Math.random()*height));
		}
	}