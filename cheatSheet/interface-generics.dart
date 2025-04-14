import 'dart:io';

import 'package:ntv_vor_25/Blackjackprep.dart';


/*void main(){
  BMW bmwMongo = BMW("BMW E36");
  RobbiCar robbi = RobbiCar("Toyota avensis");

  bmwMongo.overtake();
  bmwMongo.drive();
  robbi.drive();

  bmwMongo.needsRepairs();
  bmwMongo.crash();

  robbi.crash();
  robbi.needsRepairs();

  BakeCake DevilCake = BakeCake();

  DevilCake.preHeatOven();
  DevilCake.putFlourInBettyCrockerMix();
  DevilCake.putInOver();

  Dog dog = Dog("Snati");
  Bird bird = Bird("Tító");

  dog.makeSound();
  bird.makeSound();
  dog.shit();
  bird.shit();
}

abstract class CakeRecipe {

  void putFlourInBettyCrockerMix();
  void putInOver();
  void preHeatOven();

}

class BakeCake implements CakeRecipe {

  @override
  void preHeatOven() {
    sleep(Duration(milliseconds: 1000));
  print("* Turning the oven on 200° Celsius, fan on MAX MODE");
  }

  @override
  void putFlourInBettyCrockerMix() {
    sleep(Duration(milliseconds: 1000));
    print("* Pouring the egg in the Betty Crocker mix....");
  }

  @override
  void putInOver() {
    sleep(Duration(milliseconds: 1000));
    print("* Opens the oven and accidentally touches the tray... OUCH okay then proceeding to put cake in oven!");
  }


}
// Animal Class
abstract class Animal {

  void makeSound();
  void sleep();
  void shit();

}
// some animal implements it

class Dog implements Animal{
  String name;

  Dog(this.name);

  void buryBone(){
    print("$name buries a big fat bone");
  }

  @override
  void makeSound() {
    print("$name says WOOF! WOOF!");
  }

  @override
  void shit() {
  print("$name shits on the floor!");
  }

  @override
  void sleep() {
    print("$name Sleeping");
  }

}

class Bird implements Animal{
  String name;

  Bird(this.name);

  void fly(){
    print("$name Flies away!");
  }

  @override
  void makeSound() {
    print("$name says TWEET TWEET!!");
  }

  @override
  void shit() {
    print("$name shits on your head");
  }

  @override
  void sleep() {
    print("$name sleeps...");
  }

}
// gera einhvern abstract class og implementa hann í annan class
abstract class vehicle{

  void drive();
  void crash();
  void needsRepairs();

}

class RobbiCar implements vehicle{
  int topSpeed = 110;
  String name;

  RobbiCar(this.name);

  @override
  void crash() {
    print("Robbi keyrir yfir rautt ljós og verður T-BONED!!");
  }

  @override
  void drive() {
    print("Robbi keyrir á fugl á leið í vinnuna á $topSpeed");
  }

  @override
  void needsRepairs() {
    print("Það þarf að fara með $name í viðgerð vegna þess að Robbi lenti í árekstri!");
  }

}

class BMW implements vehicle{
  int topSpeed = 240;
  String name;

  BMW(this.name);

  void overtake(){
    print("$name tekur fram úr allri umferð á $topSpeed");
  }

  @override
  void crash() {
    print("$name notaði ekki stefnuljós og varð fyrir 10 tonna trukk");
  }

  @override
  void drive() {
    print("BMW ökumaður keyrir á manneskju á $topSpeed... og keyrir í burtu");
  }

  @override
  void needsRepairs() {
    print("$name þarf alltaf að fara í viðgerð en ökumaður hans gefur ekki hreynan!");
  }

}*/
// GENERICS, what dis?

// Types
// String, int, List, object, enum
// Generic type <T>

/*
class UsersBox<T> {
  List<T> users;

  UsersBox(this.users);
}
void main(){
  UsersBox<int> box = UsersBox([1,2]);
  UsersBox<String> stringBox = UsersBox(["Hello","World"]);

}*/

/*abstract class Vehicle{
  void start();
  void stop();
}

class Car implements Vehicle{
  @override
  void start() {
    print("Car is starting");
  }

  @override
  void stop() {
    print("Car is stopping");
  }
}

class Motorcycle implements Vehicle{
  @override
  void start(){
    print("Motorcycle is starting");
  }
  @override
  void stop(){
    print("Motorcycle is stopping");
  }
}

class Truck implements Vehicle{
  @override
  void start(){
    print("Truck is starting");
  }
  @override
  void stop(){
    print("Truck is stopping");
  }
}

class Garage{
  List<Vehicle> vehicles = [];

  void addVehicle(vehicle){
    vehicles.add(vehicle);
    print("$vehicle has been added to the garage!");
  }
  void startAll(){
    for(var Vehicle in vehicles){
      Vehicle.start();
    }
  }

}



void main(){
  // Create vehicles from their respective classes
  Truck truck = Truck();
  Motorcycle motorcycle = Motorcycle();
  Car car = Car();

  // Create a garage for the vehicles
  Garage myGarage = Garage();

  // Call vehicle methods
  myGarage.addVehicle(truck);
  myGarage.addVehicle(car);
  myGarage.addVehicle(motorcycle);

  myGarage.startAll();
}*/

class Product<T>{
  T name;
  Product(this.name);

  T getName(){
    return name;
  }
}
class CarParts<T> {
  T name;
  CarParts(this.name);

  T getName(){
    return name;
  }
}

class Inventory<T> {
  List<T> items = [];

  void addItem(T item){
    items.add(item);
  }

  void showStock(){
    print("------ STOCK ------");
    for(T item in items){
      print(item);
    }
    print("-------------------");

  }

}

void main(){
  Inventory<Product<String>> myInventory = Inventory();
  Inventory<CarParts<String>> carPartsInventory = Inventory();

  myInventory.addItem(Product("Shampoo"));
  myInventory.addItem(Product("Apple"));

  carPartsInventory.addItem(CarParts("alternator"));

  carPartsInventory.showStock();
  myInventory.showStock();
  carPartsInventory.items[0].getName();
}

// Summary
// Generics hjálpar að deala við týpur sem við vitum ekki fyrirfram
// Interface | implements hjálpar okkur að skipuleggja og skilgreina virkni