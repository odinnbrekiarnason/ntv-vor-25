import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  await getTaco();
}
/*
Future getDadJoke() async {
  Uri url = Uri.parse("https://icanhazdadjoke.com/");
  final response = await http.get(
      url,
      headers: {"accept": "application/json",});

      if(response.statusCode == 200) {
      var data = jsonDecode(response.body);
        return data["joke"];
      } else {
        throw Exception("HEYYY EITTHVAÐ BILAÐI!");
      }
}

Future getPosts()async{
  int postIndex = 2;
  String postTitle = "";
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
  final response = await http.get(url);
  final data = jsonDecode(response.body);

  for(var post in data){
    if(post["id"] == 10){
      print(post["title"]);
      postTitle = post["title"];
    }
  }
  return postTitle;
}*/

Future getTaco()async{
  Uri url = Uri.parse("https://pokeapi.co/api/v2/pokemon/greninja");
  final response = await http.get(url);
  if(response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data["name"]);
  } else {
    throw Exception("BITCH NO WORK");
  }
}
