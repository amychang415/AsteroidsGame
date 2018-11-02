class Asteroid extends Floater
{
	private int size;
	int corners = 11;
	int[] xCorners = new int[corners];
	int[] yCorners = new int[corners];
	Asteroid(int x, int y)
	{
		size = (int)(Math.random()*50+50);
		corners = 11;
		
		for (int i = 0; i < xCorners.length; i ++)
		{
			xCorners[i] = (int)(Math.random()*size); 
		}
		
		for (int i = 0; i < yCorners.length; i ++)
		{
			yCorners[i] = (int)(Math.random()*size); 
		}
		myCenterX=x;
		myCenterY=y;
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
}