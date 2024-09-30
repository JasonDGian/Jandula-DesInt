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
        actions: [IconButton(onPressed: ()=>{}, icon: const Icon(Icons.refresh_rounded) ),], //TODO COUNTER 0
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text( '$counter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Expanded(child: Text( click, style: const TextStyle(fontSize: 25))),
        ]),
      ),
      floatingActionButton: 
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            // Boton de adicion.
            CustomButton(icono: Icons.exposure_plus_1, cbFuncion: addOne,),
            // Boton de reinicio.
            CustomButton(icono: Icons.circle, cbFuncion: setZero),
            // Boton de substraccion.
            CustomButton(
            icono: Icons.exposure_minus_1, 
            cbFuncion: minusOne,
          ),
        ],
      )
    );
  }

    void addOne(){
      counter++;
      setState(() {
      });
    }

    void setZero(){
      counter==0;
      setState(() {
      });
    }

    void minusOne(){
      if (counter>0) { counter--;} 
      setState(() {
      });
    }
}



class CustomButton extends StatelessWidget {

  final IconData icono;
  final VoidCallback? cbFuncion;

  const CustomButton({
    super.key,
    required this.icono,
    this.cbFuncion
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: cbFuncion,
      enableFeedback: true,
      child: Icon(icono),
    );
  }
}
