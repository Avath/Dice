void setup()
{
	size(400,400);

	noLoop();
}
void draw()
{ 
	background(0,0,175);
	for(int i=100; i<300; i+=70){
		for(int j=100;j<300;j+=70){
	Die dice = new Die (i, j);
	
	dice.roll();
	dice.show();
	}
}
}
void mousePressed()
{
	redraw();
}
class Die 
{
	int result;
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
		result =(int) ((Math.random()*6)+1);
		
	}
	void show()
	{
         fill(225);
		rect(ix,iy,50,50,10);
		
		if(result==1||result==3||result==5){
			fill(0);
			ellipse(ix+25 ,iy+25, 10,10);
		}
		if(result!=1){
			fill(0);
			ellipse(ix+10 ,iy+40, 10,10);
			ellipse(ix+40, iy+10,10, 10);
		}
		
		if(result>3){
			fill(0);
			ellipse(ix+10 ,iy+10, 10,10);
			ellipse(ix+40 ,iy+40, 10,10);
		}
		if(result==6){
			fill(0);
			ellipse(ix+10 ,iy+25, 10,10);
			ellipse(ix+40 ,iy+25, 10,10);
			
		}
	}
}
