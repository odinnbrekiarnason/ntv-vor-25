import 'dart:io';

void main(List<String> arguments) {
  int personAge = 20;
  int driverLicenseAge = 17;
  bool doesPersonHaveDriverLicense = false;
  print(personAge);
  if (personAge >= driverLicenseAge && doesPersonHaveDriverLicense == true) {
    print("þú mátt keyra");
  } else if (personAge >= driverLicenseAge && doesPersonHaveDriverLicense == false) {
    print("þú mátt hringja í ökukennara og byrja læra að keyra");
  }
  else {
    print("Taktu strætó");
  }


/*if(!(5>7)) {
  print("this is true");
}*/
  bool authenticated = false;
  while(authenticated == false) {
    String userName = "admin";
    String myPassword = "MasterOfTheJungle!";

    print("Enter your username");
    String loginUser = stdin.readLineSync().toString();
    print("Enter your password");
    String loginPassword = stdin.readLineSync().toString();

    if (loginUser.toLowerCase() == userName.toLowerCase() && loginPassword == myPassword) {
      print("You are in welcome to the jungle");
      authenticated = true;
    } else {
      print("Incorrect username or password.");
      print("Please try again");
    }
  }
}