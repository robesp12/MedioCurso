int r= 10;
int a= 80;
int b= 50;
void setup()
{
size(100,100);
}

void draw()
{

  b=b+1;
  

background(255);
fill(87);
rect(r,r,a,a);
fill(255);
ellipse(b,b,b,b);

}
