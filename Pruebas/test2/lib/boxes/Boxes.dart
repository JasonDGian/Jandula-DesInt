import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  const Boxes({super.key});



  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.sizeOf(context);
    var dHeight = size.height;
    var dWidth = size.width;
    var witdhR1 = dWidth*0.3333;
    var heightAllRows = dHeight*0.20; 

    return Scaffold( 

      body: Column(
        children: [
          AppBar( title: Center(child: const Text( "COLORES" )),),
          // Primer row.
          Row( 
            children:[ 
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(100, 0, 0, 255), width: witdhR1, height: heightAllRows,
                  )
                ] 
              ),
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(100, 255, 0, 0), width: witdhR1, height: heightAllRows,
                  )
                ] 
              ),
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(100, 0, 150, 150), width: witdhR1, height: heightAllRows,
                  )
                ] 
              )
              
            ]   
          ),
          // Segundo row.
          Row( 
            children:[ 
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(99, 217, 255, 0), width: (dWidth*0.5), height:heightAllRows,
                  )
                ] 
              ),
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(255, 255, 141, 10), width: (dWidth*0.5), height:heightAllRows,
                  )
                ] 
              )
            ]   
          ),
          // Tercer Row.
          Row( 
            children:[ 
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(100, 0, 0, 255), width: (dWidth*0.25), height:heightAllRows,
                  )
                ] 
              ),
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(100, 255, 0, 0), width: (dWidth*0.5), height:heightAllRows,
                  )
                ] 
              ),
              Column( children: [
                  Container( 
                    color:  const Color.fromARGB(99, 43, 255, 0), width: (dWidth*0.25), height:heightAllRows,
                  )
                ] 
              ),
            ]   
          ),
          // Cuarta row
          const Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,   
              children: [
                Text("Fin colores", style: TextStyle(fontSize: 50),),
              ],
            ),
          )
        ],

      )
    );
  }
}

// ultimo hijo column wrap en expanded.