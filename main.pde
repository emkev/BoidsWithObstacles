
flock f ; 

void setup()
{
  size(640 , 480) ;
 
  f = new flock() ; 
  for(int i = 0 ; i < 100 ; i++)
  {
    f.addBoid(new boid(random(0 , 600) , random(0 , 400))) ; 
  }
}

void draw()
{
  background(200) ;
  f.run() ; 
}
