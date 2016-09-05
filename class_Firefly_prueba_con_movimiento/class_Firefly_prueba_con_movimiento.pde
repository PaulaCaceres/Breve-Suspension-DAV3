// Clase Firefly
class Firefly {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  PImage [] luciernagas = new PImage [5];
  int range = 6;
  
  boolean info = true;
  float velAngular = 0.003;
  int cx = 0;
  int cy = 0;
  float FValueA = 3.0; //PI; //3.0;
  float FValueB = 4.5; //6.451168; //6.0; // 1.4;
  float angle = 0.0;
  float x1 = 0.0;
  float x2 = 0.0;
  float y1 = 0.0;
  float y2 = 0.0;
  int myDelay = 25;
  int lastTime = 0;
  boolean odd = false;
  boolean continued = true;

// Es como el setup() del codigo principal
  Firefly() { 
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = new PVector(random(width), random(height));
    lifespan = 255.0;
    frameRate(1000/myDelay);
    cx = width/2;
    cy = height/2;
 
//Cargo array de nombres de las imágenes
    for ( int i = 0; i<luciernagas.length; i++ ){
      luciernagas[i] = loadImage( "luci" + (i+1) + ".png" );
  } 
}


  void run() {
    update();
    display();
  }


// Actualizar la posicion de la particula
  void update() {
    
      if (continued) FValueB = FValueB + velAngular; // incremento
      stroke(255, 255, 0);
    
      for (int i = 10; i >= 0; i = i-1) {
          angle = FValueB * i;
          x2 = cx + (FValueA + FValueB * angle) * cos(angle);
          y2 = cy + (FValueA + FValueB * angle) * sin(angle);

      if (i == 10) {
          x1 = x2;
          y1 = y2;
      
          position.x = x1;
          position.y = y1;
          position.x = constrain(position.x, 0, width);
          position.y = constrain(position.y, 0, height);
          image(luciernagas[0], position.x, position.y);
      
      } else {
          x1 = x2;
          y1 = y2; 
    }
  }
} 
    

  

// Dibujar la particula en esa posición
  void display() {
    image(luciernagas[int(random(0,5))], position.x, position.y);
    }
    
 } 