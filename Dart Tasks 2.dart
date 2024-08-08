/*
Name: Mahmoud Abdullah Abdo Mohammed
Dart Tasks 2
 */

// 1
void main() {
List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
print("Elements less than 5 in the list are:");
for(var i in a){
if(i<5){print(i);}
else {continue;}
}
}


// 2
void main(){
for(int i = 1; i<=100; i++){
if(i==41){continue;}
print(i);
}
}


// 3
import 'dart:io';
void main(){

print("----Program to print even numbers in an interval (start, end)----");
print("Enter the first number of the interval: ");
int a = int.parse(stdin.readLineSync()!);

print("Enter the last number of the interval: ");
int b = int.parse(stdin.readLineSync()!);

evenPrint(a, b);
}

void evenPrint(int a, int b){
print("Even numbers in the interval from $a to $b are:");
for(int i = a; i<=b; i++){
if(i%2 == 0){print(i);}
}
}


// 4
import 'dart:io';
void main(){

print("Enter the circle radius in meters to find the area: ");
double r = double.parse(stdin.readLineSync()!);
circleArea(r);
}

void circleArea(r){
double pi = 22/7;
double area = pi*r*r;
print("Circle area is $area m^2");
}


// 5
import 'dart:io';
void main(){
int i = 0;
List<String> x = [];
do{
print("--- To-Do Application ---");
print("1. Add Task");
print("2. Remove Task");
print("3. View Tasks");
print("4. Exit");
print("Enter your choice:");
i = int.parse(stdin.readLineSync()!);

if(i==1){
print("Enter the task:");
String y = stdin.readLineSync()!;
x.add(y);
print("Task added successfully!");
print("");
viewTasks(x);
}

else if(i==2){
print("Enter the task number to remove:");
int z = int.parse(stdin.readLineSync()!);
print("Task \"${x[z]}\"removed successfully!");
print("");
if(z<=x.length){x.removeAt(z-1);}
else continue;
}

else if(i==3){
viewTasks(x);
}

else if(i==4){
print("Exiting the application...");
print("");
}
} while (i<4);
}

void viewTasks(List<String> x){
print("--- Tasks ---");
for(int a = 1; a <= x.length; a++){print("$a. ${x[i-1]}");}
print("");
}


// 6
import 'dart:io';
void main(){
int? a;
print("Enter a word to check if it is palindrome or not: ");
String x = stdin.readLineSync()!;
int length = x.length;
List<String> forwardList = x.split('');
List<String> backwardList = forwardList.reversed.toList();

for(int i=0; i<length; i++){
String z1 = forwardList[i];
String z2 = backwardList[i];
if(z1 == z2){a = 1;}
else{a=2; break;}
}

if(a==1){print("The word is palindrome.");}

else if(a==2){print("The word is not palindrome.");}
}


// 7
import 'dart:io';
void main(){
for(int i=1; i<=4; i++){
for(int j=1; j<=i; j++){stdout.write("*");}
stdout.write("\n");
}
}