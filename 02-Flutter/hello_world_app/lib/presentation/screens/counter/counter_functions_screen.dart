import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {


  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

  int clicCounter = 0;
  //String click = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Function',),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon( Icons.label_sharp)
          ),
        actions: [
          IconButton(
          onPressed: () {}, 
          icon: Icon( Icons.safety_check)
          ),
          IconButton(
          onPressed: () {
            setState(() {
              clicCounter = 0;
            });
          }, 
          icon: Icon( Icons.refresh_rounded)
          ),
        ],
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clicCounter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.bold, color: clicCounter < 0 ? Colors.red : Colors.black),),
              Text('click${clicCounter == 1 ? '' : 's'}', style: TextStyle( fontSize: 100, fontWeight: FontWeight.w300),),
              
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              shape: StadiumBorder(),
              backgroundColor: Colors.green,
              onPressed: () {           
                setState(() {
                  clicCounter ++;
                  // click = clicCounter == 1 ? 'click' : 'clicks';
                  
                });
              },
              child: const Icon( Icons.plus_one, color: Colors.white ),
              

            ),

            SizedBox( width: 45,),

            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {           
                setState(() {
                  clicCounter --;
                  // click = clicCounter == 1 ? 'click' : 'clicks';
                  
                });
              },
              child: const Icon( Icons.exposure_minus_1_outlined, color: Colors.white, ),

            ),
          ],
        )
        
        
      );
  }
}


