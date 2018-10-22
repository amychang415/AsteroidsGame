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

	/*public void keyPressed()
	{
		if (key == 'a')
		{
			myDirectionX = -1;
		}
		if (key == 'd')
		{
			myDirectionX = 1;
		}
		if (key == 'w')
		{
			myDirectionY = -1;
		}
		if (key == 's')
		{
			myDirectionY = 1;
		}
	}

	public void move ()
	{  
	if (keyPressed = true)
	{
	myCenterX += myDirectionX;
	myCenterY += myDirectionY;

	if(myCenterX >width){
		myCenterX = 0;
	}
	else if (myCenterX<0){
		myCenterX = width;
	}
	if(myCenterY >height){
		myCenterY = 0;
	}
	else if (myCenterY < 0){
		myCenterY = height;
	}
	}
}

	public void accelerate (double dAmount)
	{  
     //Accelerates the ship in
     //the direction it is pointing
     //(myPointDirection)
	  
     //convert the current direction the ship is
     //pointing to radians
     double dRadians =myPointDirection*(Math.PI/180);
     
     //change coordinates of direction of travel
     myDirectionX += ((dAmount) * Math.cos(dRadians));
     myDirectionY += ((dAmount) * Math.sin(dRadians));*/    

public void keyPressed()
	{
		if (key == 'a')
		{
			myDirectionX = -1;
		}
		if (key == 'd')
		{
			myDirectionX = 1;
		}
		if (key == 'w')
		{
			myDirectionY = -1;
		}
		if (key == 's')
		{
			myDirectionY = 1;
		}
		myPointDirection = sqrt(myDirextionX^2 + myDirectionY^2)
	}
public void Accelerates

}





