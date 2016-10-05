Particle[] particles = new Particle[50];
void setup()
{
	size(500, 500);
	background(0);
	for(int i = 0; i < particles.length; i++)
	{
		particles[i] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	particles[1] = new JumboParticle();
}
void draw()
{
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
		fill(0, 0, 0, 50);
	 	rect(0, 0, 500, 500);
	 	}
	}
interface Particle
{
	public void show();
	public void move();
}
class NormalParticle implements Particle
{
	double myX, myY, mySize, speed, angle;
	int myColor;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		mySize = 1.0;
		speed = (Math.random() - 0.5) * 20 + 1;
		angle = Math.random() * 2 * PI - PI;;
		myColor = color((int)(Math.random() * 255), (int)(myY), (int)(myX));
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)(myX), (float)(myY), (float)mySize, (float)mySize);
		mySize += (Math.abs(myX - 250)) / 250;
		if(mySize > 10)
		{
			mySize = 10;
		}
	}
	public void move()
	{
		boolean direction = true;
		if(Math.abs(myX - 250) < 250 && Math.abs(myY - 250) < 250)
		{
			direction = true;
		}
		if(direction == true)
		{
			myX += speed * cos((int)(angle));
			myY += speed * sin((int)(angle));
		}
		if(Math.abs(myX - 250) > 250 && Math.abs(myY - 250) > 250)
		{
			direction = false;
		}
		if(direction == false)
		{
			myX = 250;
			myY = 250;
			mySize = 1;
		}
	}
}
class OddballParticle implements Particle
{
	double myX, myY, mySize, speed, angle;
	int myColor;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
		mySize = 1.0;
		speed = Math.random() * 3 + 1;
		angle = Math.random() * 2 * PI;;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)(myX), (float)(myY), (float)mySize, (float)mySize);
		mySize += (Math.abs(myX - 250)) / 250;
		if(mySize > 10)
		{
			mySize = 10;
		}
	}
	public void move()
	{
		myX += speed * cos((int)(angle));
		myY += speed * sin((int)(angle));
		angle += 0.01;
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill(myColor);
		ellipse((float)(myX), (float)(myY), (float)(mySize) + 20.0, (float)(mySize) + 20.0);
		mySize += (Math.abs(myX - 250)) / 250;
	}
}