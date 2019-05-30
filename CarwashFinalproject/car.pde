class Car {
  int y;
  int x;
  int pic = (int)random(10);

  Car(int x, int y) {
    y=y;
    x=x;
  }
  PImage getpic() {
    println(pic);
    switch (pic) {
    case 1: 
      return Car1;
    case 2: 
      return Car2;
    case 3: 
      return Car3;
    case 4: 
      return Car4;
    case 5: 
      return Car5;
    case 6: 
      return Car6;
    case 7: 
      return Car7;
    case 8: 
      return Car8;
    case 9: 
      return Car9;
    case 10: 
      return Car10;
    }
    return Car10;
  }
  PImage getpic2() {
    switch (pic) {
    case 1: 
      return Car11;
    case 2: 
      return Car12;
    case 3: 
      return Car13;
    case 4: 
      return Car14;
    case 5: 
      return Car15;
    case 6: 
      return Car16;
    case 7: 
      return Car17;
    case 8: 
      return Car18;
    case 9: 
      return Car19;
    case 10: 
      return Car110;
    }
    return Car110;
  }
  void NextCar(int x1) {
    getpic2().resize(200, 150);
    image(getpic2(), x1, 300);
    if (x1>1001) {      
      next=false; 
      JWise.remove();
      size--;
    }
  }
}
