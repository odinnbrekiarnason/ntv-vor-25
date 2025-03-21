// Promta user - byðja um 2 tölur og lista af aðgerðum t.d. (+ - / *)
// ráðum hvort við byðjum um 2 tölur i einu eða sitthvoru lagi
import 'dart:io';
void main() {
  print("This is a calculator");
  print("Enter any calculation you want f.e. (3*5) or (2+6) etc.");

bool calc = true;
while (calc == true) {
  print("If you want to exit the calculator please type 'exit' or keep typing in calculations to continue");
  String input = stdin.readLineSync() ?? "";
if(input.toLowerCase().contains("exit")){
  break;
}

int operatorIndex = findOperatorIndex(input);

  switch (input[operatorIndex]) {
    case "+" :
      List nums = input.split("+");
      nums.remove("+");
      try {
        double output = double.parse(nums[0]);
        double output2 = double.parse(nums[1]);
        double sum = output + output2;
        print("$output + $output2 = $sum");
      } catch (e) {
        print("Please enter a number!");
      }
    case "-" :
      List nums = input.split("-");
      nums.remove("-");
      try {
        double output = double.parse(nums[0]);
        double output2 = double.parse(nums[1]);
        double sum = output - output2;
        print("$output - $output2 = $sum");
      } catch (e) {
        print("Please enter a number!");
      }
    case "/" :
      List nums = input.split("/");
      nums.remove("/");
      try {
        double output = double.parse(nums[0]);
        double output2 = double.parse(nums[1]);
        double sum = output / output2;
        print("$output / $output2 = $sum");
      } catch (e) {
        print("Please enter a number!");
      }
    case "*" :
      List nums = input.split("*");
      nums.remove("*");
      try {
        double output = double.parse(nums[0]);
        double output2 = double.parse(nums[1]);
        double sum = output * output2;
        print("$output * $output2 = $sum");
      } catch (e) {
        print("Please enter a number!");
    }
    default :
      print("Please type a number to calculate!");
  }
}
}

int findOperatorIndex(String input){
  for(int i = 0; i < input.length; i++){
    if (input[i] == "+" || input[i] == "-" || input[i] == "/" || input[i] == "*"){
      return i;
    }
  }
    return -1;
}
