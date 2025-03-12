//Classes
import 'dart:io';

class Person {
  String name;
  int age;
  String gender;
  String enemy;
  Person({required this.name, required this.age, this.gender = "unknown", this.enemy = "Gunnar"});
  void introduce(){
    print("Hi, I am $name and i am $age year old $gender");
}
void curseEnemy(){
    if(enemy == " "){
     return null;
    }else {
      print("damn you $enemy!!");
    }
  }

}
// VEHICLE Class
class Vehicle {
  String brand;
  int year;

  Vehicle({required this.brand, required this.year});

  void displayInfo(){
    print("$brand $year");
  }

  }
  // CAR CLASS INHERITS VEHICLE CLASS
    class Car extends Vehicle{
    int door;
    String type;
    int mileage;

    Car({required this.door, required this.type, required this.mileage, required super.brand, required super.year});

    void showMoreInfo(){
      print("Doors: $door, Type: $type, Mileage: $mileage");
    }
    }

void main(){
  Car car1 = Car(door: 4, type: "Corolla", mileage: 123000, brand: "Toyota", year: 2007);

  car1.displayInfo();
  car1.showMoreInfo();

  //prompta um nafn
  print("What is your name?");
  String? name = stdin.readLineSync()!;

  //biðja um aldur
  print("what is your age?");
  int? age = int.parse(stdin.readLineSync()?? "");

  //biðja um gender
  print("What is your gender * OPTIONAL");
  String gender = validateInput(stdin.readLineSync()!);

  print("who is your enemy?");
  String enemy = validateInput(stdin.readLineSync()!);
  Person user = Person(name: name, age: age, gender: gender, enemy: enemy);
  user.introduce();
  user.curseEnemy();
}

String validateInput(String input){
  if(input == null || input.trim().isEmpty){
    print("input cannot be empty or whitespace!");
    return "Invalid";
  }
  return input;
}