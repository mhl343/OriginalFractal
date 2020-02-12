int cat=0;
public void setup()
{
background(0);
size(800,800);
}

public void draw(){
fractal(400,400,cat);
cat+=5;
}

public void fractal(int x,int y,int len){
	if (len<=10){
		circle(x,y,len);
	}else{
		fill(0);
		stroke(255);
		circle(x,y,len);
		fractal(x,y,len/2);
		fractal(x+10,y+10,len/2);
	}
}
