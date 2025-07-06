import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
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
          
        ],
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.bold, color: clickCounter < 0 ? Colors.red : Colors.black),),
              Text('click${clickCounter == 1 ? '' : 's'}', style: TextStyle( fontSize: 100, fontWeight: FontWeight.w300),),
              
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            CustomBotton( icon: Icons.plus_one, colores: Colors.limeAccent, 
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              }),

            SizedBox( width: 45,),

            CustomBotton( icon: Icons.exposure_minus_1_outlined, colores: Colors.deepOrangeAccent, 
              onPressed: () {
                setState(() {
                  if(clickCounter == 0) return;
                  clickCounter--;
                });
              }),

            SizedBox( width: 45,),

            CustomBotton( icon: Icons.refresh, colores: Colors.tealAccent, 
            onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              }),
          ],
        )
        
        
      );
  }
}

class CustomBotton extends StatelessWidget {

  final IconData icon;
  final Color colores;
  final VoidCallback? onPressed;


  const CustomBotton({
    super.key, 
    required this.icon, 
    required this.colores, 
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: colores,
      onPressed: onPressed,
      elevation: 23,
      child: Icon( icon ),
    
    );
  }
}


