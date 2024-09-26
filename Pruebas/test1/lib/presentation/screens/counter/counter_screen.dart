import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var counter=0;
  var click = "Clicks";
  @override
  Widget build(BuildContext context) {
    
    //   Se utiliza la constante en tiempo de compilación por motivos de rendmiento.
    return Scaffold(
      appBar: AppBar(
      
        title: const Center(child: Text("Counter Screen", style: TextStyle(fontSize: 55),)),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text( '$counter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Expanded(child: Text( click, style: const TextStyle(fontSize: 25))),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++; 
          counter==1 ? click="Click" : click = "Clicks";
          setState(() {
          
        }); },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
