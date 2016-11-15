/*
20150724  16:31
*/

class flock
{
  ArrayList<boid> boids ; 
  /* obs , start */
  ArrayList<Obstacle> obs ;
  /* obs , end */

  flock()
  {
    boids = new ArrayList<boid>() ; 

    /* obs  , start */
    obs = new ArrayList<Obstacle>() ;
    for(int j = 0 ; j < 4 ; j++) {
      obs.add(new Obstacle(random(20 , width-20)  , 
                           random(20 , height-20) ,
                           20)
                           );
    }
    /* obs , end */

  }

  void addBoid(boid b)
  {
    boids.add(b) ; 
  }

  void run()
  {
    for(boid b : boids)
    {
      /* obs , start */
      //b.run(boids) ;
      b.run(boids , obs);
      /* obs , end*/
    }
    
    /* obs , start */
    for(Obstacle ob : obs) {
      ob.display();  
    }
    /* obs , end */
    
  }

}
