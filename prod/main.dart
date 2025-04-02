import "dart:convert";
import "dart:io";
import "package:crypto/crypto.dart";

void main(){
  myUser myuser = myUser();
  showmenu();
  String inputMenu = stdin.readLineSync().toString();
    switch (inputMenu) {
      case "1":
        myuser.state = State.connecting;
        signUpUser();
        myuser.state = State.authenticated;
      case "2":
        List<userInDB> mydatabase = getDatabase();
        myuser.state == State.connecting;
        authenticationMethod(mydatabase) ? myuser.state = State.authenticated : myuser.state = State.unauthenticated;
      case "3":
        print("You chose to exit");
        break;
    }
  if (myuser.state == State.authenticated) {
    printSecretMessage();
  }
  }

void showmenu(){
  print("1. Sign Up");
  print("2. Login");
  print("3. Exit");
}
void printSecretMessage() {
  print("You are in.");
  print("The secret is....");
  print("Operation: Disappear");
  final SecretMessage = File("prod/secret.txt.txt");
  final readfile = SecretMessage.readAsLinesSync();
  for(var line in readfile) {
    print(" - $line");
  }
  print("Líf þitt mun aldrei verið það sama ef þú hverfur í 90 daga. Sjáumst aftur eftir 90 daga.");
}
void signUpUser(){
  print("Signup");
  print("Enter username");
  String usernameInput = stdin.readLineSync().toString();
  print("Enter password");
  String passwordInput = stdin.readLineSync().toString();
  var bytes = utf8.encode(passwordInput);
  var inputHashed = sha256.convert(bytes).toString();
  final _File = File("prod/database.csv.txt");
  final WriteTo_File = _File.openWrite(mode: FileMode.append);
  WriteTo_File.writeln("\n$usernameInput;$passwordInput");
  WriteTo_File.close();
}
bool authenticationMethod(List<userInDB> mydb) {
  print("Enter your username");
  String username = stdin.readLineSync().toString();
  print("Enter your password");
  String password = stdin.readLineSync().toString();
  var bytes = utf8.encode(password);
  var inputHashed = sha256.convert(bytes).toString();
  print("* Checking if $username exists");
  bool isAuthenticated = false;
  for (var user in mydb) {
    if(user.username == username) {
      print("* $username was found");
      if(user.password == inputHashed){
        isAuthenticated = true;
      } else {
        print("* Incorrect password");
      }
    }
  }
  return isAuthenticated;
}
enum State {
  authenticated,
  unauthenticated,
  connecting
}

List<userInDB> getDatabase() {
  final _FILE = File("prod/database.csv.txt");
  final readFile = _FILE.readAsLinesSync();
  List<userInDB> users = [];
  for(String text in readFile.sublist(1)) {
    var splitLine = text.split(";");
    userInDB tempUser = userInDB(username: splitLine[0], password: splitLine[1]);
    users.add(tempUser);
  }
  return users;
}
class userInDB {
  String username;
  String password;
  userInDB({required this.username, required this.password});
}
class myUser{
  State state;
  myUser({this.state = State.authenticated});
}
enum Color {
  red,
  black,
  yellow,
  white,
  reset,
}