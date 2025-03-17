import "dart:io";

void main(){
  bool myLightSwitch = true;
  while(true) {
  myLightSwitch = turnOnOrOff(myLightSwitch);
  displayLightsBulbStatus(myLightSwitch);
  print("Should we check again?");
  stdin.readLineSync();
  }
}

bool turnOnOrOff(bool lightSwitch){
  return !lightSwitch;
}
void displayLightsBulbStatus (bool lightSwitch) {
  print("The light is ");
  print(lightSwitch ? "On" : "Off");
}





import 'dart:math';
import 'dart:io';
void main() {
  print(
      "Welcome to my dice game!\nIt is really simple two players roll the dice and the player with the higher score wins!");
  print("Player one please type in your name!");
  String player1Name = stdin.readLineSync() ?? "";

  print("Player two please type in your name!");
  String player2Name = stdin.readLineSync() ?? "";

  Players userNames = Players(player1: player1Name, player2: player2Name);
  userNames.selectDie();
  print("Please type in Start to start the game!");

  bool game = true;
  while (game == true) {
    String start = stdin.readLineSync()?.toLowerCase() ?? "";
    if (start.contains("start")) {
      userNames.gamer();
      break;
    }
    else if (start.isEmpty || start.isNotEmpty) {
      print("Please type start to begin the game!");
      continue;
    }

  }
}


class DiceSide{
  int one;
  int two;
  int three;
  int four;
  int five;
  int six;

  DiceSide({required this.one, required this.two, required this.three, required this.four, required this.five, required this.six,});

  int roll() {
    Random rollin = new Random();
    int roll = rollin.nextInt(6);
    roll++;
    if (roll == one) {
      print(" landed on a one!");
    }
    if (roll == two) {
      print(" landed on a two!");
    }
    if (roll == three) {
      print(" landed on a three!");
    }
    if (roll == four) {
      print(" landed on a four!");
    }
    if (roll == five) {
      print(" landed on a five!");
    }
    if (roll == six) {
      print(" landed on a six!");
    }
    return roll;
  }
}
class Players {
  String player1;
  String player2;
  int p1;
  int p2;
  int rounds;
  List numberOfDice = [];
  Players({required this.player1, required this.player2, this.p1 = 0, this.p2 = 0, this.rounds = 0});

  DiceSide dice = DiceSide(one: 1, two: 2, three: 3, four: 4, five: 5, six: 6);

  void selectDie() {
    bool selectNumberOfDie = true;
    while (selectNumberOfDie == true) {
      print(
          "How many Dices would you like to have max 6\n type in 2 - 6 to select number of dice");
      String numberOfDices = stdin.readLineSync() ?? "";
      if (numberOfDices.contains("2")) {
        print("You selected 2 die!");
        numberOfDice.addAll(["Dice 1", "Dice 2"]);
        break;
      }
      else if (numberOfDices.contains("3")) {
        print("You selected 3 die!");
        numberOfDice.addAll(["Dice 1", "Dice 2", "Dice 3"]);
        break;
      }
      else if (numberOfDices.contains("4")) {
        print("You selected 4 die!");
        numberOfDice.addAll(["Dice 1", "Dice 2", "Dice 3", "Dice 4"]);
        break;
      }
      else if (numberOfDices.contains("5")) {
        print("You selected 5 die!");
        numberOfDice.addAll(["Dice 1", "Dice 2", "Dice 3", "Dice 4", "Dice 5"]);
        break;
      }
      else if (numberOfDices.contains("6")) {
        print("You selected 6 die!");
        numberOfDice.addAll(
            ["Dice 1", "Dice 2", "Dice 3", "Dice 4", "Dice 5", "Dice 6"]);
        break;
      }
      else if (numberOfDices.isNotEmpty || numberOfDices.isEmpty) {
        print("Please select a valid number!");
        continue;
      }
    }
  }

  void gamer() {
    bool player1Game = false;
    bool player2Game = false;
    bool gameBoy = false;

    while (gameBoy == false) {
      while (player1Game == false) {
        print("\n$player1\nPlease type 'roll' to roll the dice!");
        String rollin = stdin.readLineSync()?.toLowerCase() ?? "";
        if (rollin.contains("roll")) {
          rounds++;
          print("Round: $rounds");
          print("Dices rolling...");
          sleep(Duration(milliseconds: 500));
          int u = 0;
          this.numberOfDice.forEach((dice){
            u++;
            print("Dice $u");
            int i = this.dice.roll();
            p1 = p1 + i;
          });
          u = 0;
          print("your score is $p1");
          player1Game = true;
          player2Game = false;
        } else {
          print("Please type in roll");
        }
      }
      while (player2Game == false) {
        print("\n$player2\nPlease type 'roll' to roll the dice!");
        String rollin = stdin.readLineSync()?.toLowerCase() ?? "";
        if (rollin.contains("roll")) {
          print("Dices rolling...");
          sleep(Duration(milliseconds: 500));
          int u = 0;
          this.numberOfDice.forEach((dice){
            u++;
            print("Dice $u");
            int i = this.dice.roll();
            p2 = p2 + i;
          });
          u = 0;
          print("Your score is $p2");
          player2Game = true;
          player1Game = false;
        } else {
          print("Please type in 'roll'");
        }
      }
      if (rounds == 3) {
        print("\nGAME!!\nThese are your scores!\n$player1: $p1\n$player2: $p2");
        if (p1 >= p2) {
          print("$player1 wins with a score of $p1!!");
          break;
        }
        if (p2 >= p1) {
          print("$player2 two wins with a score of $p2!!");
          break;
        }
        if (p2 == p1) {
          print("IT'S A TIE!!");
          break;
        }
      }
    }
  }
}