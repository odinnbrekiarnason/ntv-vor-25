import 'dart:io';
void main(){
  //GRADING
  try{
    print("====== GRADING PROGRAM ======");
    stdout.write("Pick a number between 1-100\n");
    String? num = stdin.readLineSync();
    int score = int.parse(num!);
    if(score < 1 || score > 100){
      print("print a valid number between 1-100");
    } else {
      if(score >= 90){
        print("Grade: A\nGood job!");
      }else if(score >= 80){
        print("Grade: B\nGood job!");
      }else if(score >= 70){
        print("Grade: C\nGood enough!");
      }else if(score <= 60){
        print("Grade: D\nNeeds improving!");
      }else{
        print("Grade: F\nFail!");
      }
    }
  }catch(e){
    print("Error!");
  }
bool isFalse = true;
  //turnery operator, annað if else
  isFalse ? print("True!") : print("False!");
}