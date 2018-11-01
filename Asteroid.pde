class Asteroid extends floater
{
	private int size;
	Asteroid()
	{
		size = Math.random()*50+50;
		corners = 11;
		xCorners = new int[11];
		for (int i = 0; i <= XCorners.length; i ++)
		{
			xCorners[i] = Math.random()*size 
		}
		yCorners = new int[11];
		for (int i = 0; i <= YCorners.length; i ++)
		{
			yCorners[i] = Math.random()*size 
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