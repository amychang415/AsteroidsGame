class Life extends Floater  
{ 
	public Life(int lives)
{
	corners = 3;  //the number of corners, a triangular floater has 3     
	xCorners = new int[corners];
	xCorners[0] = 8;
	xCorners[1] = -4;
	xCorners[2] = -4;
	yCorners = new int[corners];
	yCorners[0] = 0;
	yCorners[1] = -4;
	yCorners[2] = 4;
	myColor = 255;   
	myCenterX = lives*20+20;
	myCenterY = 60;   
	myDirectionX = 0;
	myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
	myPointDirection = -90;
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