/*
Name: Mahmoud Abdullah Abdo Mohammed
Dart Tasks 3
 */

// 1
class Car{
  String? name;
  int? model;
  String? color;

  Car.NamedConstructor(this.name, this.model, this.color);

  void printingFunction(){
    print("Name: $name");
    print("Model: $model");
    print("Color: $color");}

}

void main(){
  Car car = Car.NamedConstructor("TOYOTA", 2024, "Red");
  car.printingFunction();
}


// 2
import 'dart:io';

class BankAccount{
  String? name;
  int? accountNumber;
  String? accountType;
  double balanceAmount = 0;

  BankAccount(this.name, this.accountNumber, this.accountType, this.balanceAmount);

  set setName(String value){this.name = value;}
  set setAccountNumber(int value){this.accountNumber = value;}
  set setAccountType(String value){if(value == 'S' || value == 'C'){this.accountType = value;}else{print("Account type must only be S or C");}}

  String? get getName=> this.name;
  int? get getAccountNumber=>this.accountNumber;
  String? get getAccountType=>this.accountType;

  void deposit(double value){balanceAmount += value; print("Deposit done successfully. Now your balance is: $balanceAmount");}

  void withdraw(double value){
    if(balanceAmount-value >= 1000){balanceAmount -= value; print("Withdraw done successfully. Now your balance is: $balanceAmount");}
    else{print("Withdraw not allowed. Remaining balance must be at least 1000");}
  }

  void display(){
    print("Name: $name");
    print("Account Number: $accountNumber");
    print("Account Type: $accountType");
    print("Balance Amount: $balanceAmount");
  }

}

void main(){
  List<BankAccount> customers = [];

  print("Enter the number of customers to be added");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0; i<n; i++){
    print("Enter the name:");
    String? name = stdin.readLineSync()!;
    print("Enter the account number:");
    int? accountNumber = int.parse(stdin.readLineSync()!);
    print("Enter the account type (S for saving, C for current):");
    String? accountType = stdin.readLineSync()!;
    print("Enter the balance amount:");
    double balanceAmount = double.parse(stdin.readLineSync()!);

    BankAccount customerAdded = BankAccount(name, accountNumber, accountType, balanceAmount);
    customers.add(customerAdded);
  }

  for(var customerAdded in customers){
    customerAdded.display();

    print("Enter the deposit amount: ");
    double deposit_amount = double.parse(stdin.readLineSync()!);
    customerAdded.deposit(deposit_amount);

    print("Enter the withdraw amount: ");
    double withdraw_amount = double.parse(stdin.readLineSync()!);
    customerAdded.withdraw(withdraw_amount);

    print("Now balance for ${customerAdded.name} is ${customerAdded.balanceAmount}");
  }
}


// 3
import 'dart:io';

class Rectangle{
  double? _width;
  double? _height;

  Rectangle(this._width, this._height);

  double get width => _width!;
  double get height=> _height!;

  set width (double value){if(value>0){_width = value;}}
  set height (double value){if(value>0){_height = value;}}

  double? get area => width*height;
}

void main(){
  print("Enter the rectangle width (in meters):");
  double w = double.parse(stdin.readLineSync()!);

  print("Enter the rectangle height (in meters):");
  double h = double.parse(stdin.readLineSync()!);

  Rectangle rectangleArea = Rectangle(w,h);

  if(w > 0 && h > 0){print("Area of rectangle is ${rectangleArea.area} m^2");}
  else{print("Both width and height must be greater than zero");}
}


// 4
class Shape{
  int? _width;
  int? _height;

  void setValues(int w, int h){
    _width = w;
    _height = h;
  }
}

class Rectangle extends Shape{
  int area() {return _width!*_height!;}
}

class Triangle extends Shape{
  double area() {return 0.5*_width!*_height!;}
}

void main(){
  print("Width: 3 m, Height: 4 m");
  Rectangle rectangle = Rectangle();
  rectangle.setValues(3, 4);
  print("\tArea of rectangle is ${rectangle.area()} m^2");
  print("---------");

  Triangle triangle = Triangle();
  triangle.setValues(3, 4);
  print("\tArea of triangle is ${triangle.area()} m^2");
}


// 5
class Shape{
  double? width;
  double? height;

  Shape(this.width, this.height);

  double area(){return width!*height!;}
}

class Rectangle extends Shape{
  String? color;

  Rectangle(super.width, super.height, this.color);

  @override
  double area() {return width!*height!;}

  void colorPrint(){print("\tRectangle color is $color");}
}

class Square extends Shape{
  late String color;

  Square(super.width, super.height, this.color);

  @override
  double area() {return width!*height!;}

  void colorPrint(){print("\tSquare color is $color");}
}

void main(){
  print("Rectangle:");
  Rectangle rectangleData = Rectangle(2, 3, "Black");
  double? a1 = rectangleData.area();
  print("\tArea of rectangle is $a1 m^2");
  rectangleData.colorPrint();
  print("---------");

  print("Square:");
  Square squareData = Square(5, 5, "Blue");
  double? a2 = squareData.area();
  print("\tArea of square is $a2 m^2");
  squareData.colorPrint();
}