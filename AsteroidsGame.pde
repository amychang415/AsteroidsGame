Spaceship ship;
Star[] stars;
public void setup() 
{
	size(500, 500);
	ship = new Spaceship();
	stars = new Star[400];
	for (int i = 0; i < stars.length; i++)
	{
		stars[i] = new Star((int)(Math.random()*height),(int)(Math.random()*width));

	}


}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();

	}
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
		
	
			if (((ship.getDirectionX() < 5) && (ship.getDirectionX() > -5) || ((ship.getDirectionY() > -5) && (ship.getDirectionY() < 5)))
			{
			ship.accelerate(1);
			}
			else 
			{
				if ((ship.getDirectionY() >= 5) || (ship.getDirectionY() <= -5))
				{
				ship.setDirectionY((int)Math.signum(ship.getDirectionY())*5);
				}
				if ((ship.getDirectionX() >= 5) || (ship.getDirectionX() <= -5))
				{
				ship.setDirectionX((int)Math.signum(ship.getX())*5);
				}
			}

		}
		if (key == 'r')
		{
			ship.setDirectionX(0);
			ship.setDirectionY(0);
			ship.setPointDirection((int)(Math.random()*360));
			ship.setY((int)(Math.random()*height));
			ship.setX((int)(Math.random()*width));
		}
	}