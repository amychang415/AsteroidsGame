class Star //note that this class does NOT extend Floater
{
	private int myX;
	private int myY;
  public Star(int x, int y)
  {
  	myX = x;
  	myY = y;
  }
  public void show()
  {
  	ellipse(myX,myY,0.5,0.5);
  }
}
