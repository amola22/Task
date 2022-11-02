import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _input = 0;
  var ran = Random();
  final numbers =List<int>.filled(6,0,growable: true);
  int ?NUM;
  double SIZE=140;
  void main() {
    for(int i=0; i<7; i++){
      numbers[i]=ran.nextInt(500);
    }
    numbers.sort();
  }
  void _incrementCounter() {
    setState(() {
      _input++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            for (int i=0 ; i<_input ; i++)...[
              for(int x=i; x<=i;x++,SIZE-=4)...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    numbers[x].toString(),
                    style:TextStyle(
                        fontSize: SIZE
                    ),
                  ),
                ),
              ]
            ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Text("add"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


