import 'dart:io';
void main(){
  /*//Þetta er function
  void printMyNameAndJob(String name, String job){
    print("Ég heiti $name og vinna mín er $job");
  }
  printMyNameAndJob("faggi", "Bónus");
  printMyNameAndJob("Robbi", "Tottari Dauðans!");

  //Increment
  int increment(int num1, int num2){
    return num1 + num2;
  }
  int sum1 = increment(5, 5);
  print("5 + 5 er $sum1");
  //Decrement
  int decrement(int num1, int num2){
    return num1 - num2;
  }
  int sum2 = decrement(20, 10);
  print(sum2);
  //Divide
  double divide(double num1, double num2){
    return num1 / num2;
  }
  print("Type a number");
  String Input1 = stdin.readLineSync() ?? "";
  print("Type another number");
  String Input2 = stdin.readLineSync() ?? "";

  int input1AsNum = int.parse(Input1);
  int input2AsNum = int.parse(Input2);

  int? inputSum = decrement(input1AsNum, input2AsNum);
  print(inputSum);

  //how long till im 50
  print("Enter your age");
  String In = stdin.readLineSync()?? "";
  int age = howLongTill50(In);
  print("in $age years you will turn 50!");
  // int ef við viljum skila tölu*/

  // VOID skilar engu
  // String til að skila streng


  // positional argument
  void positionalNameAndAge(String name, int age){
    print("my name is $name and i am $age years old");
  }

  positionalNameAndAge("Robbi", 34);
  // Named argument
  //void namedNameAndAge({String name = "robbi", int age = 10}) þetta er fallback value, ef return er null er þetta það sem prentast
  void namedNameAndAge({String? name, int? age}){
    print("my name is $name and i am $age years old");
  }

  namedNameAndAge(age: 35, name: "Robbi");

}
int howLongTill50(String age){
  int yearsTill50 = 50 - int.parse(age);
  return yearsTill50;
}