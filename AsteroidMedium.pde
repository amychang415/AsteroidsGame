class AsteroidMedium extends Floater
{
	private int rotspeed = (int)((Math.random()*5)-3);

	public AsteroidMedium(Asteroid asteroidLarge)



	{
		double z = Math.random();
		if (z < 0.33)
		{
		corners = 12;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 3*2;
		xCorners[1] = 4*2;
		xCorners[2] = 2*2;
		xCorners[3] = 3*2;
		xCorners[4] = 0*2;
		xCorners[5] = -5*2;
		xCorners[6] = -6*2;
		xCorners[7] = -8*2;
		xCorners[8] = -6*2;
		xCorners[9] = -7*2;
		xCorners[10] = -4*2;
		xCorners[11] = -1*2;

		yCorners[0] = 4*2;
		yCorners[1] = 1*2;
		yCorners[2] = 0*2;
		yCorners[3] = -4*2;
		yCorners[4] = -7*2;
		yCorners[5] = -5*2;
		yCorners[6] = -6*2;
		yCorners[7] = -3*2;
		yCorners[8] = 0*2;
		yCorners[9] = 2*2;
		yCorners[10] = 5*2;
		yCorners[11] = 3*2;
	}
	else if (z < 0.66)
	{
		corners = 12;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 2*3;
		xCorners[1] = 4*3;
		xCorners[2] = 4*3;
		xCorners[3] = 2*3;
		xCorners[4] = 4*3;
		xCorners[5] = 2*3;
		xCorners[6] = 1*3;
		xCorners[7] = -2*3;
		xCorners[8] = -4*3;
		xCorners[9] = -4*3;
		xCorners[10] = -1*3;
		xCorners[11] = -2*3;
		yCorners[0] = 4*3;
		yCorners[1] = 2*3;
		yCorners[2] = 1*3;
		yCorners[3] = 0*3;
		yCorners[4] = -2*3;
		yCorners[5] = -4*3;
		yCorners[6] = -3*3;
		yCorners[7] = -4*3;
		yCorners[8] = -2*3;
		yCorners[9] = 1*3;
		yCorners[10] = 2*3;
		yCorners[11] = 4*3;
	}
	else {
		
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 3*3;
		xCorners[1] = 4*3;
		xCorners[2] = 3*3;
		xCorners[3] = 4*3;
		xCorners[4] = 2*3;
		xCorners[5] = -2*3;
		xCorners[6] = -4*3;
		xCorners[7] = -4*3;
		xCorners[8] = -2*3;
		xCorners[9] = 0*3;
		yCorners[0] = 5*3;
		yCorners[1] = 2*3;
		yCorners[2] = 0*3;
		yCorners[3] = -2*3;
		yCorners[4] = -4*3;
		yCorners[5] = -4*3;
		yCorners[6] = -2*3;
		yCorners[7] = 2*3;
		yCorners[8] = 5*3;
		yCorners[9] = 5*3;
	}
		myCenterX = asteroidLarge.getX();
		myCenterY = asteroidLarge.getY();
		myColor = color(255);
		myDirectionX = (int)(Math.random()*3-1);
		myDirectionY = (int)(Math.random()*3-1);
		myPointDirection = 0;
	}

	public void setX(int x) {myCenterX = x;}  
	public int getX() {return (int)myCenterX;}
	public void setY(int y) {myCenterY=y;}   
	public int getY(){return (int)myCenterY;}
	public void setDirectionX(double x){myDirectionX = x;}   
	public double getDirectionX(){return myDirectionX;}   
	public void setDirectionY(double y){myDirectionY = y;} 
	public double getDirectionY() {return myDirectionY;} 
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
	public double getPointDirection(){return myPointDirection;} 

	public void move()
	{
		turn(rotspeed);
		super.move();
		if (myDirectionX == 0 && myDirectionY == 0)
		{
			myDirectionX = (int)(Math.random()*3-1);
			myDirectionY = (int)(Math.random()*3-1);
		}
	}



}