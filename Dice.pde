void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(0,0,175);
	Die dice = new Die (200,200);
	dice.roll();
	dice.show();
}
void mousePressed()
{
	redraw();
}
class Die 
{
	int result=0;
	int ix;
	int iy;
	Die(int x, int y) 
	{
		roll();
		ix=x;
		iy=y;
	}
	void roll()
	{
		result =result+(int) ((Math.random()*6)+1);
		
	}
	void show()
	{

		rect(200,200,50,50);
		
	}
}
