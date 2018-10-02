int r=50;//50
int a=0;//0
int b=r*2;//100

void setup()
{
size(100,100);
}

void draw()
{

  r= r+1;
  
background(255);

line(r,a,r,r);
line(r,r,a,b);
line(r,r,b,b);
}
