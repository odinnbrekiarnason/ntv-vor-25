void main(){
  // Basic syntax
  // Types

  int number = 0;
  double isDouble = 0;

  String name;

  bool isActive;

  final isFinal;
  final String nameOf = "Odinn";
  // nameOf = "banana"; mun ekki virka vegna final

  const isConst = 0;
  // isConst getur haft meira en 1 declaration og það mun ekki breytast

  var isVar;
  // var virkar eins og int og string þú þarft bara ekki að declarea það


  Map isMap = {
    "username":"odinnbool", "password":"odinnPassword"
  };
  print(isMap["username"]);

  // Control flow
  //if else switch
  // for while do-while

  String weekDay = "monday";

  switch(weekDay) {
    case "saturday" :{
        print("weekend!");
        break;
      }
    case "tuesday":{
        print("weekend!");
        break;
      }
    default:{
        print("Weekday!");
      }
  }



  // Functions
  int addTo(int num1, int num2){
  int sum = addTo(10, 20);
    return (sum);
  }

  // List and loops
  List myList = [];

  for(int i = 1; i <= 3; i++){
    print(i);
  }

  int index = 3;

  while(index >= 0){
  print(index);
  index--;
  }
  // Classes and objects
  Banana banan = Banana(name: "Robbi");
  banan.peel();


  // Tímaverkefni : búa til contact forrit

  // þú átt að geta vistað contact semsagt símanúmer / nafn / email
  // þú átt að geta breytt contact
  // séð alla vistaða contacts
}

class Banana {
  String name;

  Banana({required this.name});

  void peel(){
    print("$name peels himself to be eaten");
  }
}