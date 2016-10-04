Particle[] particles = new Particle[30];
void setup()
{
	size(500, 500);
	for(int i = 0; i < particles.length; i++)
	{
		particles[i] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	particles[1] = new JumboParticle();
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
interface Particle
{
	public void show();
	public void move();
}
class NormalParticle implements Particle
{
	double myX, myY, speed, angle;
	int myColor;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		speed = Math.random() * 8 + 1;
		angle = Math.random() * 2 * PI;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	public void show()
	{
		fill(255);
		ellipse((float)(myX), (float)(myY), 20.0, 20.0);
	}
	public void move()
	{
			myX += speed * cos((int)(angle));
			myY += speed * sin((int)(angle));
	}
}
class OddballParticle implements Particle //uses an interface
{
	double myX, myY, speed, angle;
	int myColor;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
		speed = Math.random() * 8 + 1;
		angle = Math.random() * 2 * PI;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	public void show()
	{
		fill(255);
		ellipse((float)(myX), (float)(myY), 20.0, 20.0);
	}
	public void move()
	{
		myX += speed * cos((int)(angle));
		myY += speed * sin((int)(angle));
	}
}
class JumboParticle implements Particle //uses inheritance
{
	double myX, myY, speed, angle;
	int myColor;
	JumboParticle()
	{
		myX = 250;
		myY = 250;
		speed = Math.random() * 8 + 1;
		angle = Math.random() * 2 * PI;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	public void show()
	{
		fill(255);
		ellipse((float)(myX), (float)(myY), 50.0, 50.0);
	}
	public void move()
	{
		myX += speed * cos((int)(angle));
		myY += speed * sin((int)(angle));
	}
}