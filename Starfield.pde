Particle[] particles = new Particle[30];
void setup()
{
	size(500, 500);
	for(int i = 0; i < particles.length; i++)
	{
		particles[i] = new NormalParticle();
	}
	noLoop();
}
void draw()
{
	background(0);
	noStroke();
	fill(0, 0, 0, 10);
	rect(0, 0, 500, 500);
	for(int i = 0; i < particles.length; i++)
	{
		particles[i].show();
		particles[i].move();
		
	}
}
void mousePressed()
{
	loop();
}
class NormalParticle implements Particle
{
	double myX, myY, speed, angle;
	int myColor;
	NormalParticle()
	{
		myX = (Math.random() * 2 + 249);
		myY = (Math.random() * 2 + 249);
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
		if(myX <= 250)
		{
			myX -= 1;
		}
		if(myX > 250)
		{
			myX += 1;
		}
		if(myY <= 250)
		{
			myY -= 1;
		}
		if(myY > 250)
		{
			myY += 1;
		}
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
		myX += 10;
		myY += 10;
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
		myX += 5;
		myY += 5;
	}
}