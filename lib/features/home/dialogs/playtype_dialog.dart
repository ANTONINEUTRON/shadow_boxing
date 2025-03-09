import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/data/enums/game_mode.dart';
import 'package:shadow_boxing/shared/widgets/custom_button.dart';

class PlayTypeDialog extends StatelessWidget {
  const PlayTypeDialog({
    super.key, required this.onGameModeSelected,
  });

  final Function(GameMode) onGameModeSelected;


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Single Player",
              onTap: () => onGameModeSelected(GameMode.single),
            ),
            
            CustomButton(
              text: "Tournament",
              onTap: 
              () => onGameModeSelected(GameMode.tournament),
            ),],
        ),
      ),
    );
  }
}