Spaceship ship;
public void setup() 
{
	size(500, 500);
	ship = new Spaceship();

}
public void draw() 
{
  background(0);
  ship.show();
  ship.keyPressed();
  ship.move();
}