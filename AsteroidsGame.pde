Spaceship ship;
Star[] stars;
ArrayList <Asteroid> asteroids;
public void setup() 
{
	size(500, 500);
	ship = new Spaceship();
	stars = new Star[400];
	for (int i = 0; i < stars.length; i++)
	{
		stars[i] = new Star((int)(Math.random()*height),(int)(Math.random()*width));

	}
	asteroids = new ArrayList<Asteroid>();
	for (int i = 0; i < 10; i++)
	{
		asteroids.add(new Asteroid());
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
	for (int i = 0; i < asteroids.size(); i++)
	{
		
		asteroids.get(i).move();
		asteroids.get(i).show();
		if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), ship.getX(), ship.getY()) <= 30)
		{
		asteroids.remove(i);	
		}

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

