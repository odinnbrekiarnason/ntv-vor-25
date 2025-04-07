import 'dart:io';

void main(){
/*  List stars = [["*","**","***"],["****","*****"]];
  List<String> emails = ['example1@gmail.com', "donkey.is",
    'example2@hotmail.com',
    "atli.yahoo.is",
    'example3@yahoo.com',
    'hello@world.com',
    "shrek123.com",
    'user@dart.com'];


  for(int i = 0; i < stars.length; i++){
    List row = stars[i];
    for(int j = 0; j < row.length; j++){
      print(row[j]);
    }
  }
  for(String validEmail in emails){
    if(validEmail.contains("@")){
      print(validEmail);
    }
  }*/
 /* List tvShows = ["From", "White Lotus", "Godless", "Breaking bad", "Sons of Anarchy"];

  tvShows.forEach((tvShow) {
    print(tvShow);
    });*/
  // Nota nested loops til að prenta út:

  // *****
  // *****
  // *****
  // *****
  // *****

  //     *
  //    **
  //   ***
  //  ****
  // *****

  // 1
  // 121
  // 12321
  // 1234321

  //   *
  //  ***
  // *****
  //  ***
  //   *
  String stars = "*****";

for(int i = 0; i < 5; i++){
  for(int j = 10; j > stars.length; j--){
    //stdout.write("*");
    String L = ("_" * stars.length);

    print(L.substring(j) + "${stars.substring(j)}");
  }
    print("");

}
}
