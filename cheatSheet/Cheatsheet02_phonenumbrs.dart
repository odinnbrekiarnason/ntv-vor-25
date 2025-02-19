import 'dart:io';

//input: taka á móti símanúmeri
//validate símanúmer
//símanúmer eru 7 stafir
//eiga til að skrifa með "_"
//eiga til að skrifa með " "
//eiga til að vera með regional code (+354)
  void main(List<String> arguments) {
    bool validNumber = false;
    while (validNumber == false) {
      print("hvað er símanúmerið þitt?");
      String phoneNumber = stdin.readLineSync().toString();
      print("Þú skrifaðir $phoneNumber");
      if (phoneNumber.contains("+354") == true) {
      phoneNumber = phoneNumber.replaceAll("+354", "");
      print("Þú skrifaðir +354, það er í lagi");
      }
      if (phoneNumber.length == 8 || phoneNumber.length == 9) {
        phoneNumber = phoneNumber.replaceAll("-", "");
        phoneNumber = phoneNumber.replaceAll(" ", "");
        print("Ég vona að þú hafir bætt við auka bili eða mínus ");
      }
      print("$phoneNumber, ég mun ná að breyta þessu ef það eru tölustafir í $phoneNumber");
      int? phoneNumberStorage = int.tryParse(phoneNumber);
      if (phoneNumber.length == 7 && phoneNumberStorage is int) {
        print("Okei næs, ég er með rétta lengt og þetta eru bara tölustafir.");
      }
        if (phoneNumber[0] != "1") {
          print("$phoneNumber");
          print("þetta símanúmer er valid");
          validNumber = true;
        }
        print("ertu ekki að grínast þú settir vitlausan staf!!");
      }
    }