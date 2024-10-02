import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 45,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colors.secondary,
          ),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Hey baws!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const _ImageBubble()
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final wHeight = size.height;
    final wWidth = size.width;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fsBEkFuyWhOpq1Lcu_WpSPSLjKOLzs3DEw&s',
              height: wHeight*0.5,
              width: wWidth*0.27,
              fit: BoxFit.fill,
              loadingBuilder: (context, child, loadingProgress) { 
                if ( loadingProgress == null ) { return child; }

                return Container(
                  width: 30,
                  height: 30,
                  child: const CircularProgressIndicator()

                );

               },)

        );
  }
}
