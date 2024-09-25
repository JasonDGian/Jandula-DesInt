import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      
      body: Center(
        child: Column( 
          children: [
            Text("Counter", style: TextStyle(fontSize: 24)),
            SizedBox(
              height: 300,
              width: 300,
            ),
            Expanded( child: Text('0', style: TextStyle(fontSize: 50),)),
            ElevatedButton(onPressed: null, child: Text("Button"))] ),
      )





    );
  }
}
