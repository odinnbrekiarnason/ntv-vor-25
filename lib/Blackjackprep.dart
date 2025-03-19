// Hvað er object oriented programming (OOP)
// Forritunarstíll sem byggir á því að skipuleggja kóða í kringum "hluti / object", þessir hlutir sameina gögn og aðgerðir í einingu sem auðvelt er að endurnýta
// Dry: dont repeat yourself. reynum að gera allt eins re-usable og hægt er

// 4 lykilatriði
// 1.klassi (Class)
// 2.hlutir (objects)
// 3. Hjúpun (encaptulation)
// 4. Arfgengi (inheritance)

// DÆMI: car class

class Car{
  String brand;
  String model;
  int speed;

  Car({required this.brand, required this.model, required this.speed});

  // aðferið
void drive(){
  print("$brand $model er að keyra á $speed km/h");
}
void brake(){
  this.speed = 0;
  print("$brand $model hefur stöðvast");
}
}

void main(){

  //búum til objectin þar
  Car volvoXC90 = Car(brand: "Volvo", model: "XC90", speed: 140);

  volvoXC90.drive();
  volvoXC90.brake();

  //við getum notað classan/blueprintið til að búa til eins marga objects og við viljum

  Car avensis = Car(brand: "Toyota", model: "Avensis", speed: 65);

  avensis.drive();
  avensis.brake();

  Person baunhaus = Person(name: "Baun", age: 22, job: "Bónus", birthday: "1.júní");

  baunhaus.printName();
  baunhaus.agePlus();
  baunhaus.quitJob();
}

// ** VERKEFNI **
//búa til class sem heitir person
// Person er með nafn og aldur og starf
// búum til method/aðferð sem prentar út nafnið -
// Afmæli sem ár bætist við á aldurinn og prenta svo út nýja aldurinn - segja upp. prenta út uppsögn eða bara hættir í $job takk fyrir mig

class Person {
  String name;
  String job;
  int age;
  String birthday;

  Person({required this.name, required this.age, required this.job,required this.birthday});

  void printName() {
    print("Hæ ég heiti $name og ég er $age ára gamall og ég vinn í $job");
  }
    void agePlus(){
    age++;
    print("Ég verð $age þegar ég á afmæli $birthday");
  }
  void quitJob(){
    print("Ég er hættur í $job \n$name hata bónus");
  }


}