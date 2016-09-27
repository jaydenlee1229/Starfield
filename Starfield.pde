Particle[] particles;
void setup()
{
	size(500, 500);
	particles = new Particle[30];
	for(int i = 0; i < particles.length; i++)
	{
		particles[i] = new NormalParticle();
	}
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
		angle = 0;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
}
class Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	double myX, myY, speed, angle;
	int myColor;
	OddballParticle()
	{
		myX = Math.random() * 500;
		myY = Math.random() * 500;
		speed = 10;
		angle = 0;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
}
class JumboParticle implements Particle //uses inheritance
{
	double myX, myY, speed, angle;
	int myColor;
	JumboParticle()
	{
		myX = Math.random() * 500;
		myY = Math.random() * 500;
		speed = 10;
		angle = 0;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
}