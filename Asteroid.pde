class Asteroid extends Floater
{
	private int rotspeed = (int)((Math.random()*5)-3);

	public Asteroid()
	{
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -10*2;
		xCorners[1] = -5*2;
		xCorners[2] = 0;
		xCorners[3] = 5*2;
		xCorners[4] = 8*2;
		xCorners[5] = 3*2;
		xCorners[6] = 5*2;
		xCorners[7] = 0*2;
		xCorners[8] = -5*2;
		xCorners[9] = -4*2;
		yCorners[0] = -5*2;
		yCorners[1] = -10*2;
		yCorners[2] = -6*2;
		yCorners[3] = -9*2;
		yCorners[4] = -5*2;
		yCorners[5] = 0;
		yCorners[6] = 5*2;
		yCorners[7] = 3*2;
		yCorners[8] = 6*2;
		yCorners[9] = 0*2;
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