import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //   Se utiliza la constante en tiempo de compilación por motivos de rendmiento.
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter Screen", style: TextStyle(fontSize: 55),)),
      ),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("10",
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Expanded(child: Text('Clicks', style: TextStyle(fontSize: 25))),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
