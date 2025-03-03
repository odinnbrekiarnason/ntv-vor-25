
void main(List<String> arguments){
  List<String> noFriends = ["Robbi", "Odinn", "Sölvi", "Oskar", "Kristo"];
  for(String yub in noFriends){
    print(yub);
  }
  for(String yub in noFriends){
    print("Wassup $yub i dont like u");
  }
  List<String> shoppin = ["car","better car","best car","tomatoes","orange"];
  int i = 0;
  print("YO KOMDU MEÐ BLÖÐRUR Í PARTYIÐ");
  shoppin.insert(0, "Blöðrur");
  print(shoppin);
  shoppin.insert(3, "Jager Meister");
  print(shoppin);
  shoppin.add("Egg");
  print(shoppin);
  shoppin.sort();
  for(String item in shoppin){
    i++;
    print("$i.$item");
  }

}