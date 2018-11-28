class Bullet extends Floater
{
	public Bullet(Spaceship theship)
	{
		myCenterX = theship.getX();
		myCenterY = theship.gety();
		myPointDirection = theship.getPointDirection();

	
}