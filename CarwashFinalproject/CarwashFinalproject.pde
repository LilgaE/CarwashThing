import java.util.Queue;
import java.util.ArrayList;
import java.util.LinkedList;
Queue<Car> JWise = new LinkedList<Car>();
int size =1;
boolean next = false;
PImage Car1, Car2, Car3, Car4, Car5, Car6, Car7, Car8, Car9, Car10;
PImage Car11, Car12, Car13, Car14, Car15, Car16, Car17, Car18, Car19, Car110;
PImage fjaoifsjsaisaji;
int x = 1;
RunnerThing [] amount;
void setup() {
  size(1000, 500);
  background(0);
  noStroke();
  smooth();
  cursor(CROSS);
  frameRate(60);
  amount= new RunnerThing[200];
  for (int i=0; i<amount.length; i++) {
    amount[i]= new bubble();
  }
  Car1 = loadImage("car1.jpg");
  Car2 = loadImage("car2.png");
  Car3 = loadImage("car3.jpg");
  Car4 = loadImage("car4.jpg");
  Car5 = loadImage("car5.jpg");
  Car6 = loadImage("car6.jpg");
  Car7 = loadImage("car7.jpg");
  Car8 = loadImage("car8.jpg");
  Car9 = loadImage("car9.jpg");
  Car10 = loadImage("car10.jpg");
  Car11 = loadImage("car1.jpg");
  Car12 = loadImage("car2.png");
  Car13 = loadImage("car3.jpg");
  Car14 = loadImage("car4.jpg");
  Car15 = loadImage("car5.jpg");
  Car16 = loadImage("car6.jpg");
  Car17 = loadImage("car7.jpg");
  Car18 = loadImage("car8.jpg");
  Car19 = loadImage("car9.jpg");
  Car110 = loadImage("car10.jpg");
  fjaoifsjsaisaji= loadImage("imageService.jpg");
  fjaoifsjsaisaji.resize(50, 50);
  //Car1.resize(30, 30);
  //Car2.resize(30, 30);
  //Car3.resize(30, 30);
  //Car4.resize(30, 30);
  //Car5.resize(30, 30);
  //Car6.resize(30, 30);
  //Car7.resize(30, 30);
  //Car8.resize(30, 30);
  //Car9.resize(30, 30);
  //Car10.resize(30, 30);
}


void draw() {
  background(0);
  textSize(30);  
  fill(255);
  rect(50, 50, 200, 50);
  rect(750, 50, 200, 50);
  rect(400, 50, 200, 50);
  fill(0);
  text("Add Cars", 75, 85);
  text("Next Car", 430, 85);
  text("Remove Cars", 755, 85);
  image(fjaoifsjsaisaji, 900, 230);

  displayCars();
  for (int h=0; h<amount.length; h++)
  {
    amount[h].movebubbles();
    amount[h].drawbubbles();
  }
}
void displayCars() {
  int i=1;
  if (next) {
    JWise.peek().NextCar(x);
    x=x+3;
  }
  if(!next){
    x=1;
  }
    
    for ( Car c : JWise) {
    fill(255);
    //ellipse(i*500/(size+1), 200, 20, 20);
    c.getpic().resize(30, 30);
    image(c.getpic(), i*500/(size+1), 200);
    i++;
  }
}


void mouseClicked() {

  if (mouseX>50 && mouseX<250 &&mouseY>50 && mouseY<100) {
    JWise.add(new Car(500, 0));
    size++;
  }
  if (mouseX>750 && mouseX<950 && mouseY>50 && mouseY<100) {
    if (JWise.peek()!=null) {
      JWise.remove();
      size--;
    }
  }
  if (mouseX>400 && mouseX<600 &&mouseY>50 && mouseY<100) {
    if (JWise.peek()!=null) {
      next=true;
    }
  }
}
