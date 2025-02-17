import 'dart:io';


void main(List<String> arguments)  {
 /* print("Hæ hvað heitir þú?");
  String firstName = stdin.readLineSync().toString();
  print("Hæ $firstName");
  print("Hvað er eftirnafn þitt?");
  String lastName = stdin.readLineSync().toString();
  print("Hæ $firstName $lastName");
  firstName = "Jón";
  print("Núna ertu $firstName $lastName HAHA lúði");

  print("Hvað er uppáhalds talan þín?");
  String inputNumber = stdin.readLineSync().toString();
  print("hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 sinnum $inputNumber er $result");

  int nr1 = 8;
  int nr2 = 40;
  double res1 = nr1 / nr2;
  print("$nr1 deilt með $nr2 er $res1");
  print(res1);
  print(res1.toStringAsFixed(8));
*/

  String firstName = "Óðinn Breki";
  String lastName = "Árnason";
  String fullName = firstName + " " + lastName;
  String url = "ntv.is";

  List<String> names = firstName.split(" ");
  print(names[0]);
  print(names[1]);

  String username = names[0].substring(0,2) + names[1].substring(0,2) + lastName.substring(0,4);
  username = username.toLowerCase();
  username = removeIcelandicLetters(username);
String emailAddress = username + "@" + url;
print(emailAddress);


}
String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}