class Spaceship extends Floater  
{ 
	public Spaceship()
{
	corners = 3;  //the number of corners, a triangular floater has 3     
	xCorners = new int[3];
	xCorners[0] = 16;
	xCorners[1] = -8;
	xCorners[2] = -8;
	yCorners = new int[3];
	yCorners[0] = 0;
	yCorners[1] = -8;
	yCorners[2] = 8;
	myColor = 255;   
	myCenterX = 150;
	myCenterY = 150;   
	myDirectionX = 0;
	myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
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

public void keyPressed()
	{
		if (key == 'a')
		{
			myDirectionX = -1;
			dRadians = atan((float)(Math.toRadians(myDirectionY/myDirectionX)));
			
		}
		if (key == 'd')
		{
			myDirectionX = 1;
			dRadians = atan((float)(Math.toRadians(myDirectionY/myDirectionX)));
	
		}
		if (key == 'w')
		{
			myDirectionY = -1;
			dRadians = atan((float)(Math.toRadians(myDirectionY/myDirectionX)));			
		}
		if (key == 's')
		{
			myDirectionY = 1;
			dRadians = atan((float)(Math.toRadians(myDirectionY/myDirectionX)));
		}
		if (key == 'r')
		{
			accelerate();
		}
		
	}
public void accelerate()
{
	myDirectionX = myDirectionX + Math.signum(myDirectionX)/3;
	myDirectionY = myDirectionY + Math.signum(myDirectionY)/3;

}
}





