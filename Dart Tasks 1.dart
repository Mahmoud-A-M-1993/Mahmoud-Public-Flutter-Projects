/*
Name: Mahmoud Abdullah Abdo Mohammed
Dart Tasks 1
 */

// 1
void main(){
  String x = "Hello Dart";
  print(x);
}

// 2
void main(){
  int n1 = 5;
  int n2 = 10;
  print("$n1 and $n2");
}

// 3
import 'dart:io';
void main(){
  num? result;

  stdout.write("Enter a number to be squared: ");
  num y = int.parse(stdin.readLineSync()!);
  result = y*y;
  print(result);
}

// 4
import 'dart:math';
void main(){
  double c_temp1 = 25.5; // Celsius temperature
  double f_temp1 = c_temp1*9/5+32; // Fahrenheit temperature
  print("$c_temp1 °C is $f_temp1 °F");

  double f_temp2 = 70; // Fahrenheit temperature
  double c_temp2 = (f_temp2-32)*5/9; // Celsius temperature
  print("$f_temp2 °F is $c_temp2 °C");
}

// 5
import 'dart:math';
void main(){
  double rating1 = 4;
  double rating2 = 5;
  double rating3 = 6;
  double? average_Rating;
  average_Rating = (rating1+rating2+rating3)/3;
  print("Average is $average_Rating");
}

// 6
void main(){
  int birth_year = 1993;
  int future_year = 2026;
  int age = future_year-birth_year;
  print("I will be $age in $future_year");
}

// 7
void main(){
  String a = "15";
  var b = int.parse(a);
}

// 8
import 'dart:io';
void main(){
  stdout.write("Enter a number to know if it is odd or even: ");
  int c = int.parse(stdin.readLineSync()!);

  if(c%2 == 0)
    print("Number is even");

  if(c%2 != 0)
    print("Number is odd");
}

// 9
import 'dart:io';
void main(){
  stdout.write("Enter a letter: ");
  String d = stdin.readLineSync()!;

  if(d=='O' || d=='o' || d=='E' || d=='e' || d=='I' || d=='i' || d=='U' || d=='u' || d=='A' || d=='a')
    print("Character is vowel");

  else
    print("Character is consonant");
}

// 10
import 'dart:io';
void main(){
  stdout.write("Enter a number to know if it is positive, negative, or zero: ");
  int e = int.parse(stdin.readLineSync()!);

  if(e>0)
    print("Number is positive");

  if(e<0)
    print("Number is negative");

  if(e==0)
    print("Number is zero");
}

// 11
import 'dart:io';
void main(){
  stdout.write("Enter the first number: ");
  num x1 = num.parse(stdin.readLineSync()!);

  stdout.write("Enter the operation (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  stdout.write("Enter the second number: ");
  num x2 = num.parse(stdin.readLineSync()!);

  num? result;

  switch(op){
    case '+': result = x1 + x2; break;
    case '-': result = x1 - x2; break;
    case '*': result = x1 * x2; break;
    case '/': result = x1 / x2;
  }
  print("Result is: $result");
}

// 12
void main(){
  List<int> f = [7,2,6,3,9,4,5];
  print("List before addition is $f");
  int sum_first_last = f.first+f.last;
  print("Sum of first element and end element is $sum_first_last ");

  f.add(18);
  print("List after addition is $f");
}
