
//ArrayList en Processing, normalemente esto se conoce como un vector
ArrayList<Firefly> fireflies;

void settings() {
  size (1920, 1080); //, P3D);
  }
  
void setup() {
  
  fireflies = new ArrayList<Firefly>(); // inicializa el vector

  for (int i=0; i<1; i++){
    fireflies.add(new Firefly());
  }
}

void draw() {
  background(0);
  
  for (Firefly p : fireflies) {
    p.update();
    p.display();
    }

 } 