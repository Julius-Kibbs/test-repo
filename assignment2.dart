void addTwo(int a, int b){
  int sum = a + b;
  print("The sum is $sum");
}

void subtractTwo(int c, int d){
  int difference = c - d;
  print("The difference is $difference");
}

void multiplyTwo(int e, int f){
  int product = e * f;
  print("The product is $product");
}

void divideTwo(double g, double h){
  double quotient = g / h ;
  print("The quotient is $quotient");
}

void stringLength(){
 String name = "Julius";
 int i = name.length;
 print("The length of the string is $i");
}

void getFirstElement(){
 List<String> friends = ['apples','mangoes','bananas','pears'];
  print(friends[0]);
}

void main(){
  addTwo(2, 2);
  subtractTwo(5, 1);
  multiplyTwo(5, 5);
  divideTwo(6, 3);
  stringLength();
  getFirstElement();
}