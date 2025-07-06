import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clicCounter = 0;
  //String click = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen',),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clicCounter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.bold),),
              Text('click${clicCounter == 1 ? '' : 's'}', style: TextStyle( fontSize: 100, fontWeight: FontWeight.w300),),
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {           
            setState(() {
              clicCounter ++;
              // click = clicCounter == 1 ? 'click' : 'clicks';
              
            });
          },
          child: const Icon( Icons.plus_one ),

        ),
        
        
      );
  }
}


