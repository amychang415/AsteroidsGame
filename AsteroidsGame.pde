Spaceship ship;
Star[] stars;
Asteroid[] asteroids;
public void setup() 
{
	size(500, 500);
	ship = new Spaceship();
	stars = new Star[400];
	for (int i = 0; i < stars.length; i++)
	{
		stars[i] = new Star((int)(Math.random()*height),(int)(Math.random()*width));

	}
	asteroids = new Asteroid[10];
	for (int i = 0; i < asteroids.length; i++)
	{
		asteroids[i] = new Asteroid();
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
	for (int i = 0; i < asteroids.length; i++)
	{
		asteroids[i].show();
		asteroids[i].move();

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
			ship.accelerate(1);
			if (ship.getDirectionY() >= 5)
			{
				ship.setDirectionY(5);
			}
			if (ship.getDirectionY() <= -5)
			{
				ship.setDirectionY(-5);
			}
			if (ship.getDirectionX() >= 5)
			{
				ship.setDirectionX(5);
			}
			if (ship.getDirectionX() <= -5)
			{
				ship.setDirectionX(-5);
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