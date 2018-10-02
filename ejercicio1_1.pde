int r =30;
int a =r*3;
void setup()
{
size(100,100);
}
void draw()
{
  
  r= r+1;
  
background(255);

fill(255);
ellipse(r,r,r,r);
ellipse(a,r,r,r);
ellipse(r,a,r,r);
ellipse(a,a,r,r);
}
