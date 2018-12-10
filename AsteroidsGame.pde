ArrayList <Life> lives;
Spaceship ship;
Star[] stars;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets;
Fire fire;
int life = 3;
int points = 0;
boolean wPressed = false;
int x = 0;
public void setup() 
{
	fire = new Fire();
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
	lives = new ArrayList<Life>();
	for (int i = 0; i < life; i++)
	{
		lives.add(new Life(i));
	}

}
public void draw() 
{
	noFill();
	textAlign(LEFT);
	background(0);
	fill(255);
	textSize(32);
	text(points, 10, 40);
	text("00", 30, 40);

	ship.show();
	ship.move();
	

  	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();

	}
	for (int i = 0; i < life; i++)
	{
		lives.get(i).show();
	}

	if (wPressed == true)
	{
		if (x%5 == 0 || x%7 == 0 || x%3 == 0)
		{
		fire.show();
	
		}
			x++;
	}
	
	for (int i = 0; i < asteroids.size(); i++)
	{
		
		asteroids.get(i).move();
		asteroids.get(i).show();
		if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), ship.getX(), ship.getY()) <= 30)
		{
		asteroids.remove(i);
		life--;
		ship.setX(width/2);
		ship.setY(height/2);
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection(-90);
		}
	}
	for (int i = 0; i < bullets.size(); i++)
	{
		for (int n = 0; n < asteroids.size(); n++)
		{
			if (dist(asteroids.get(n).getX(), asteroids.get(n).getY(), bullets.get(i).getX(), bullets.get(i).getY()) <=20)
			{
				asteroids.remove(n);
				bullets.remove(i);
				points = points+1;
				break;	
			}
		}
	}

	for (int i = 0; i < bullets.size(); i++)
	{
		
		bullets.get(i).move();
		bullets.get(i).show();
	}
	if (life <= 0)
	{
		background(0);
		textSize(90);
		textAlign(CENTER);
		text("Game Over", width/2, height/2);
	}

			fire.setX(ship.getX());
			fire.setY(ship.getY());
			fire.setPointDirection((int)ship.getPointDirection());
			fire.setDirectionX(ship.getDirectionX());
			fire.setDirectionY(ship.getDirectionY());
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
			wPressed = true;
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
		if (key == 'p')
		{
		background(0);
		ship.setX(width/2);
		ship.setY(height/2);
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection(-90);
		life = 3;
		points = 0;
		x = 0;
		asteroids.clear();
		bullets.clear();
		for (int i = 0; i < 10; i++)
			{
			asteroids.add(new Asteroid());
			}
		}

	}
public void keyReleased()
{
	if (key == 'w')
	{
		wPressed = false;
	}
}

