/*
Name: Mahmoud Abdullah Abdo Mohammed
Phone: +967772420887
Email: mahmoud.a.m.1993@gmail.com

Task 5
 */

import 'package:flutter/material.dart';

void main() {runApp(const SimpleCalc());}

class SimpleCalc extends StatefulWidget {
  const SimpleCalc({super.key});

  @override
  State<SimpleCalc> createState() => _SimpleCalcState();
}

class _SimpleCalcState extends State<SimpleCalc> {
  int n1 = 0;
  int n2 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Calculator", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue, fontSize: 25),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 111,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$n1", style: const TextStyle(fontSize: 44,),),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: (){setState(() {n1++;});},
                      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.lightBlue),
                      child: const Text("+", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),

                    const SizedBox(width: 70,),

                    ElevatedButton(
                      onPressed: (){setState(() {n1--;});},
                      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.lightBlue),
                      child: const Text("-", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                  ],
                ),

                const SizedBox(width: 77,),

                Text("$n2", style: const TextStyle(fontSize: 44),),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: (){setState(() {n2++;});},
                      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.lightBlue),
                      child: const Text("+", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),

                    const SizedBox(width: 70,),

                    ElevatedButton(
                      onPressed: (){setState(() {n2--;});},
                      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.lightBlue),
                      child: const Text("-", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 111,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
                onPressed: (){setState(() {result = (n1+n2).toDouble();});},
                style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.blueGrey),
                child: const Text("+", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
              ),

              ElevatedButton(
                onPressed: (){setState(() {result = (n1-n2).toDouble();});},
                style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.blueGrey),
                child: const Text("-", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
              ),

              ElevatedButton(
                onPressed: (){setState(() {result = (n1*n2).toDouble();});},
                style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.blueGrey),
                child: const Text("*", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
              ),

              ElevatedButton(
                onPressed: (){setState(() {result = n1/n2;});},
                style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.blueGrey),
                child: const Text("/", style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
            ],),

            const SizedBox(height: 155,),


            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 90,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.greenAccent,
                child: Text("Result = $result",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35, ),
                ),
              ),
            ),

          ],
        ),

      ),
    );


  }
}
