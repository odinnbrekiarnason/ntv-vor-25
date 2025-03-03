import 'dart:io';

void main(){
  List<String> toppings = [];
  print("Hello what would you like on your pizza?\nTo stop adding toppings say quit");
  bool topp = false;
  while(topp == false){
  String pizzaTopping = stdin.readLineSync()?.toLowerCase()?? '';
  if(pizzaTopping.contains("quit")){
    topp = true;
    break;
  }
  toppings.add(pizzaTopping);
  print("you added $pizzaTopping to your pizza!");
  print("you have $toppings on your pizza so far!");
  }
  String word = "NTV";
  for(int i = 0; i < word.length; i++){
    print(word[i]);
  }
  List<String> pizzas = ["Pepperoni", "Hawaii", "Cheese", "Margherita"];
  for(String pizza in pizzas){
    print("OMG $pizza goog");
  } print("However all pizzas are great!");
  print("Input your daily calorie intake!");
  String Cal = stdin.readLineSync()?.toLowerCase() ?? "";



}