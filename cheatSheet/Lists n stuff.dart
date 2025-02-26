void main() {
  List names = ["Odinn", "Robbi", "Bolli", "Gunni"];
  print(names);
  names[0] = "baun";
  print(names);
  names.add("Banana");
  print(names);
  names.addAll(["Hobbiti", "kalli á þakinu", "boggi"]);
  print(names);
  List Empty = [];
  names.insert(4, "HAHA ÉG ER HÉR!");
  print(names);
  names.insertAll(6, ["slovakia", "Oskar", "Elli"]);
  print(names);
  names.remove("Hobbiti");
  print(names);
  names.removeAt(3);
  print(names);
  int baunHaus = names.indexOf("Banana");
  print(baunHaus);
  names.removeAt(baunHaus);
  print(names);
  List nums = [5,6,7,2,1,9,10];
  List chars = ["a","h","u","b","j","c"];
  print(chars);
  chars.sort();
  print(chars);
  nums.sort();
  nums.removeRange(2,4);
  print(nums);
  for(int i = 1; i <= 10; i++){
    print(i);
  }
  for(int j = 10; j >= 0; j--){
    print(j);
  }

  List animals = ["giraffe", "elephant", "lion", "pig"];

  for(String animal in animals){
    print(animals);
    print(animal);
  }
  int numb = 5;

    do{
      numb--;
      print(numb);
    }while(numb > 0);

    List numbs = [1,2,3,4,5,6,7,8,34,1236,54352];
    for(int num in numbs){
      if(num < 5) {
        print(num);
      }
    }
  /*List numbs = [1,2,3,4,5,7,8,2342,348,7845,443];
    List numbs2 = [1,2,5,8,2342,348,443];
    List commonNumbs = [];

    for(int i in numbs){
    for(int j in numbs2){
      if(i == j){
        commonNumbs.add(i);
      }
    }
  }print(commonNumbs);
}