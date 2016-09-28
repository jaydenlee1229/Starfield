Particle[] particles = new Particle[30];
void setup()
{
	size(500, 500);
	for(int i = 0; i < particles.length; i++)
	{
		particles[i] = new OddballParticle();

	}
}
void draw()
{
	background(0);
	if(mousePressed)
	{
		noStroke();
		fill(0, 0, 0, 10);
		rect(0, 0, 500, 500);
		for(int i = 0; i < particles.length; i++)
		{
			particles[i].show();
			particles[i].move();
		}
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
	public void show()
	{
		fill(255);
		ellipse((float)(myX), (float)(myY), 20.0, 20.0);
	}
	public void move()
	{
		myX += 5;
		myY += 5;
	}
}
interface Particle
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
		speed = 10;
		angle = 0;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	public void show()
	{
		myX = 250;
		myY = 250;
		fill(255);
		ellipse((float)(myX), (float)(myY), 20.0, 20.0);
	}
	public void move()
	{
		myX += 10 * Math.cos(angle);
		myY += 10 * Math.sin(angle);
		angle += 0.5;
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
	public void show()
	{
		fill(255);
		ellipse((float)(myX), (float)(myY), 30.0, 30.0);
	}
	public void move()
	{
		angle += 0.2;
		myX += 5;
		myY += 5;
	}
}