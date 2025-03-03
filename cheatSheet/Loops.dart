import "dart:io";
import "dart:math";

void main(List<String> arguments) {
  bool playAgain = true;
  while (playAgain == true) {
    var intValue = Random().nextInt(100);
    print("Hello and welcome to my guessing game!\nYou can choose your difficulty\nEasy, Medium or Hard");
    int totalGuesses = 0;
    int Maxguesses = 0;
  print(intValue);
    bool nahMan = false;
    while (nahMan == false) {
      String maxGuesses = stdin.readLineSync()?.toLowerCase() ?? "";
      if (maxGuesses == "easy") {
        print("You have chosen Easy difficulty!");
        Maxguesses = 15;
        nahMan = true;
      } else if (maxGuesses == "medium") {
        print("You have chosen Medium difficulty!");
        Maxguesses = 10;
        nahMan = true;
      } else if (maxGuesses == "hard") {
        print("You have chosen Hard difficulty!");
        Maxguesses = 5;
        nahMan = true;
      } else {
        print("Please choose a valid difficulty");
        continue;
      }
    }
      print("You have $Maxguesses guesses to choose the correct number!\nYou can choose to leave the game at any time by typing Done");
      bool yesMan = false;
      while (yesMan == false) {

        String? guess = stdin.readLineSync()?.trim().toLowerCase() ?? '';
        if (guess.contains("done")){
          print("You chose to end the game, Better luck next time");
          break;}
        int number = 0;
        try{
          number = int.parse(guess);
        print("You guessed: $number");
        totalGuesses = totalGuesses + 1;
        }catch(e){
          print("Please choose a valid number");
          continue;
        }
        if (Maxguesses == totalGuesses) {
          print("Game over, out of guesses\nThe number was $intValue");
          break;
        }
        if (Maxguesses - totalGuesses == 1){
          print("Final guess choose wisely");
        }
         else if (number == intValue) {
          print("Correct well done it took you $totalGuesses tries");
          yesMan = true;
        }
         else if (number > intValue) {
          print("To big");
          print("You have ${Maxguesses - totalGuesses} guesses left!");
        }
         else if (number < intValue) {
          print("To low");
          print("You have ${Maxguesses - totalGuesses} guesses left!");
        }
      }
      print("Do you want to play again?");
      String again = stdin.readLineSync()?.toLowerCase()?? "";
      if (again.contains("yes")){
        continue;
      }
      else if(again.contains("no")){
        print("Thanks for playing!");
       playAgain = false;
      }else {
        playAgain = false;
      }
    }
  }
