class Asteroid extends Floater
{
	private int rotspeed = (int)((Math.random()*5)-3);

	public Asteroid()
	{
		double x = Math.random();
		if (x < 0.33)
		{
		corners = 12;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 3*4;
		xCorners[1] = 4*4;
		xCorners[2] = 2*4;
		xCorners[3] = 3*4;
		xCorners[4] = 0*4;
		xCorners[5] = -5*4;
		xCorners[6] = -6*4;
		xCorners[7] = -8*4;
		xCorners[8] = -6*4;
		xCorners[9] = -7*4;
		xCorners[10] = -4*4;
		xCorners[11] = -1*4;

		yCorners[0] = 4*4;
		yCorners[1] = 1*4;
		yCorners[2] = 0*4;
		yCorners[3] = -4*4;
		yCorners[4] = -7*4;
		yCorners[5] = -5*4;
		yCorners[6] = -6*4;
		yCorners[7] = -3*4;
		yCorners[8] = 0*4;
		yCorners[9] = 2*4;
		yCorners[10] = 5*4;
		yCorners[11] = 3*4;
	}
	else if (x<0.66)
	{
		corners = 12;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 2*5;
		xCorners[1] = 4*5;
		xCorners[2] = 4*5;
		xCorners[3] = 2*5;
		xCorners[4] = 4*5;
		xCorners[5] = 2*5;
		xCorners[6] = 1*5;
		xCorners[7] = -2*5;
		xCorners[8] = -4*5;
		xCorners[9] = -4*5;
		xCorners[10] = -1*5;
		xCorners[11] = -2*5;
		yCorners[0] = 4*5;
		yCorners[1] = 2*5;
		yCorners[2] = 1*5;
		yCorners[3] = 0*5;
		yCorners[4] = -2*5;
		yCorners[5] = -4*5;
		yCorners[6] = -3*5;
		yCorners[7] = -4*5;
		yCorners[8] = -2*5;
		yCorners[9] = 1*5;
		yCorners[10] = 2*5;
		yCorners[11] = 4*5;
	}
	else {
		
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 3*5;
		xCorners[1] = 4*5;
		xCorners[2] = 3*5;
		xCorners[3] = 4*5;
		xCorners[4] = 2*5;
		xCorners[5] = -2*5;
		xCorners[6] = -4*5;
		xCorners[7] = -4*5;
		xCorners[8] = -2*5;
		xCorners[9] = 0*5;


		yCorners[0] = 5*5;
		yCorners[1] = 2*5;
		yCorners[2] = 0*5;
		yCorners[3] = -2*5;
		yCorners[4] = -4*5;
		yCorners[5] = -4*5;
		yCorners[6] = -2*5;
		yCorners[7] = 2*5;
		yCorners[8] = 5*5;
		yCorners[9] = 5*5;
	}
		myColor = color(255);
		myCenterY= (int)(Math.random()*height);
		myCenterX= (int)(Math.random()*width);
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