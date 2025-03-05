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