class Spaceship extends Floater  
{ 
	public Spaceship()
{
	corners = 3;  //the number of corners, a triangular floater has 3     
	xCorners[] = new int[3];
	System.out.println("We're initializing the Xcorners");
	xCorners[0] = 0;
	xCorners[1] = 60;
	xCorners[2] = 30;
	System.out.println("We're initializing the Ycorners");
	yCorners[] = new int[3];
	yCorners[0] = 0;
	yCorners[1] = 0;
	yCorners[2] = 60;
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

}
