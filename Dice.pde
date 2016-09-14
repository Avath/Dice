float total=0;
int result;
float average;
Boolean w=true;
float q=0;
void setup()
{
	size(400,400);
	
	noLoop();

	
}
void draw()
{ 
	background(0,0,(int)((Math.random()*226)+1));
	

	for(int i=20; i<350; i+=50){
		for(int j=50;j<400;j+=50){
	Die dice = new Die (i, j);
	
	
	dice.roll();
	dice.show();
	fill(225,0,0);
	rect(0,0,400,50);
	fill(0,225,0);
	total=result+total;
	average=total/49;
		textSize(30);
		text("Total:"+(int)total,20,30);
		text("Average:"+average, 175,30);
		
	}
}

fill(0,0,0,q);

rect(0,0,400,400);
}
void mousePressed()
{
	redraw();
	total=0;
	q+=10;
	
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
