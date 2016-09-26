void setup()
{
	size(500, 500);
}
void draw()
{
	if(mousePressed)
	{
		noStroke();
		fill(0, 0, 0, 10);
		rect(0, 0, 500, 500);
	}
	else
	{
		background(0);
	}
}
class NormalParticle
{
	double myX, myY, speed, angle;
	int myColor;
	NormalParticle()
	{
		myX = Math.random() * 500;
		myY = Math.random() * 500;
		speed = 10;
		angle = theta;
		myColor = color((Math.random() * 255, Math.random() * 255, Math.random() * 255));
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

