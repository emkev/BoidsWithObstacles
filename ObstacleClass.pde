
/* 2016.11.15 
   obstacles objects
*/

class Obstacle
{
  PVector location ;
  int radius ;
  
  Obstacle(float x , float y , int r)
  {
    location = new PVector(x , y);
    radius = r ;
  }
  
  void display()
  {
    ellipse(location.x , location.y , radius , radius); 
  }
  
}
