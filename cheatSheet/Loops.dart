import "dart:io";
import "dart:math";


    var intValue = Random().nextInt(100);
void main(List<String>  arguments) {
  print("Guess a number between 1-100, you have 10 chances");
    int totalGuesses = 0;
    print(intValue);
  bool yesMan = false;
  while (yesMan == false || totalGuesses == 10) {
    String? guess = stdin.readLineSync()?.trim() ?? '';
   totalGuesses = totalGuesses + 1;
    int number = int.parse(guess);

    if (number == intValue) {
        print("Correct well done it took you $totalGuesses tries");
        yesMan = true;
        print("Do you want to play again\nYes or No");
        String again = stdin.readLineSync() ?? "";
        if (again.contains("Yes") == true){
          yesMan = false;
          print("Guess a number between 1-100, you have 10 chances");
        }
      } if (totalGuesses == 0) {
      print("Out of guesses YOU LOST IDIOT");
      yesMan = true;
    } else if (number > intValue == true) {
          print("To big");
        }else if (number < intValue == true) {
          print("To low");
        } if (yesMan == true) {
    }

  }
    }


