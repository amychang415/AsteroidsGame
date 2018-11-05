class Asteroid extends Floater
{
	private int rotspeed = (int)((Math.random()*360)-180);
	int corners = 11;
	int[] xCorners = new int[corners];
	int[] yCorners = new int[corners];
	Asteroid(int x,int y)
	{
		corners = 11;
		xCorners = new int[corners];
		xCorners[0] = -10;
		xCorners[1] = -5;
		xCorners[2] = 0;
		xCorners[3] = 5;
		xCorners[4] = 8;
		xCorners[5] = 3;
		xCorners[6] = 3;
		xCorners[7] = -6;
		xCorners[8] = -11;
		xCorners[9] = -3;
		yCorners = new int[corners];
		yCorners[0] = -5;
		yCorners[1] = -10;
		yCorners[2] = -3;
		yCorners[3] = -10;
		yCorners[4] = -5;
		yCorners[5] = 5;
		yCorners[6] = 0;
		yCorners[7] = 6;
		yCorners[8] = 9;
		yCorners[9] = 0;
 
		myColor = 255;



		/*for (int i = 0; i < xCorners.length; i ++)
		{
			xCorners[i] = (int)(Math.random()*size); 
		}
		
		for (int i = 0; i < yCorners.length; i ++)
		{
			yCorners[i] = (int)(Math.random()*size); 
		}*/


		myCenterX= x;
		myCenterY= y;
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
	}
}