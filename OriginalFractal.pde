public void setup()
{
	rectMode(CENTER);
	size(400,400);
	squaring(width/2,height/2,100,0);
}

public void draw()
{
}

public void squaring(int x, int y, int size, float rotation)
{
	if (size >= 50)
	{
		float i = (float)Math.random()*255;
		float ii = (float)Math.random()*255;
		float iii = (float)Math.random()*255;
		translate((float)x, (float)y);
		rotate(rotation);
		rect(0, 0, size, size);
		rotate(-rotation);
		translate(-(float)x, -(float)y);
		fill(i,ii,iii);
		squaring(x + (size/2), y + (size/2), size*4/5, rotation + 45);
		squaring(x + (size/2), y - (size/2), size*4/5, rotation + 45);
		squaring(x - (size/2), y + (size/2), size*4/5, rotation + 45);
		squaring(x - (size/2), y - (size/2), size*4/5, rotation + 45);
	}
}