class Bullet extends Floater
{
	public Bullet(Spaceship theship)
	{
		myCenterX = theship.getX();
		myCenterY = theship.getY();
		myPointDirection = theship.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = theship.getDirectionX() + (5 * Math.cos(dRadians));
		myDirectionY = theship.getDirectionY() + (5 * Math.sin(dRadians));
	}
	public void show()
	{
		ellipse((int)myCenterX,(int)myCenterY, 1,1);
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


public void move ()
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }   
}