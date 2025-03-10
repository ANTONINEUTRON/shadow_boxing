import 'package:flutter/material.dart';
import 'package:shadow_boxing/data/enums/moves.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    super.key,
    required this.playerName,
    required this.isCentered,
    // required this.matrix4,
  });

  final String playerName;
  final bool isCentered;
  // final Matrix4? matrix4;

  @override
  Widget build(BuildContext context) {
    //  Transform(
      // transform: matrix4 ?? Matrix4.identity(),
      // child: 
     return Card(
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              Icon(Icons.person, size: isCentered ? 200 : 80),
              SizedBox(width: 8),
              Text(playerName),
            ],
          ),
      //   ),
      ),
    );
  }

}


// void _getRandomTransform() {
//     List<Matrix4> transforms = [
      
//     ];
//     setState(() {
//       _transform = transforms[_random.nextInt(4)];
//     });