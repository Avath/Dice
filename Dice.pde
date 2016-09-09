float total=0;
int result;
float average;
void setup()
{
	size(400,400);

	noLoop();
}
void draw()
{ 
	background(0,0,175);

	for(int i=50; i<350; i+=70){
		for(int j=50;j<350;j+=70){
	Die dice = new Die (i, j);
	
	
	dice.roll();
	dice.show();
	fill(225,0,0);
	rect(0,0,400,50);
	fill(0,225,0);
	total=result+total;
	average=total/25;
		textSize(30);
		text("Total:"+(int)total,20,30);
		text("Average:"+average, 200,30);
	}

}
}
void mousePressed()
{
	redraw();
	total=0;
}
class Die 
{
	
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
