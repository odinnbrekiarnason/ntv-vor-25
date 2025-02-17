void main(List<String> arguments) {
  String firstName = "Óðinn Breki";
  String lastName = "Árnason";
  print("Hi $firstName $lastName");

  String fullName = firstName + " " + lastName;
  print("Hi $fullName");

  String SSN = "010605-2530";
  String fixSSN = SSN.replaceAll("-", "");
  //.replaceALL notað til að skipta út print message
  int ssnLength = fixSSN.length;
  print(ssnLength);
  String message = "Hello World";
  String fixMessage = message.replaceAll("World", "Banani");
print(fixMessage.toUpperCase());
//.substring notað til að taka út fyrri/seinni part
String birthDate = SSN.substring(0,6);
print(birthDate);
String Email = "odinnbreki@outlook.com";
print("Email sent to $Email");
}