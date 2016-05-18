//Oliver Flatt
//car

int numOfCars = 150;
Car[] cars = new Car[numOfCars];

Car myCar1;
Car myCar2; // Two objects!

void settings() {
  size(800, 800);
  int i = 0;
  while (i<numOfCars)
  {
    cars[i] = new Car(randomColorGhost(), 
      random(0, width), 
      random(10, height-10), 
      random(-5, 5), 
      random(1, 4));
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i<numOfCars)
  {
    cars[i].drive();
    cars[i].display();
    i++;
  }
}