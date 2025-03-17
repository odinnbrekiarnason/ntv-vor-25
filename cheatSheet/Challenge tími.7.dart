void main(){
  print("The rectangle is 5 long and 8 high, what is the area of the square?");
  int i = 0;
  i = calcRectangleArea(i);
  print("the rectangle area is $i!");
  print("Now calculate the area of a circle that has a radius of 5");
  double b = 0;
  b = calcCircleArea(b);
  print("The area of a cirlce is ${b.toString().substring(0,8)}!");
  print("Now calculate the area of a triangle with a base of 4 and a height of 5");
  double c = 0;
  c = calcTriangleArea(c);
  print(c);
  String a = ("count how many spaces are in this string");
  print(a);
  int h = 0;
  h = inputSpaceCount(h);
  print("There are $h spaces in this string!");
}


calcRectangleArea(int calc){
  int height = 8;
  int length = 5;
  int area = height * length;
  return (area);
}

calcCircleArea(double circle){
  double r = 5;
  double pi = 3.1415926535897932;
  double area = pi * r * r;
  return (area);
}

calcTriangleArea(double tri){
  double i = 4;
  double c = 5;
  double h = i * c;
  double a = h / 2;
  return a;
}

inputSpaceCount(int space){
  String a = ("this is a string for counting spaces!");
  a.split(" ");
  int i = 0;
  for(String b in a.split(" ")){
    i++;
  }
  return i;
}