Spaceship ship;
Star[] stars;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets;
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
	bullets = new ArrayList<Bullet>();
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
		/*if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), ship.getX(), ship.getY()) <= 30)
		{
		asteroids.remove(i);	
		}*/
	}
	for (int i = 0; i < bullets.size(); i++)
	{
		for (int n = 0; n < asteroids.size(); n++)
		{
			if (dist(asteroids.get(n).getX(), asteroids.get(n).getY(), bullets.get(i).getX(), bullets.get(i).getY()) <=10)
			{
				asteroids.remove(n);
				bullets.remove(i);
				break;	
			}
		}
	}

	for (int i = 0; i < bullets.size(); i++)
	{
		
		bullets.get(i).move();
		bullets.get(i).show();
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
		if (key == 'f')
		{
			bullets.add(new Bullet(ship));

		}
	}

