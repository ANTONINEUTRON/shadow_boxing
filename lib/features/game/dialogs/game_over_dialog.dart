import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/core/routes.gr.dart';
import 'package:shadow_boxing/data/enums/game_winner.dart';
import 'package:shadow_boxing/features/game/cubits/game_cubit.dart';
import 'package:shadow_boxing/shared/widgets/custom_button.dart';
import 'package:shadow_boxing/shared/widgets/custom_rect_button.dart';

class GameOverDialog extends StatelessWidget {
  const GameOverDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<GameCubit>();
    var gameWinner = cubit.state.gameWinner;
    var message = "";
    switch (gameWinner) {
      case GameWinner.mainPlayerWon:
        message = "Congratulations! \nYou won!";
        break;
      case GameWinner.opponentWon:
        message = "You Lost!";
        break;
      case GameWinner.draw:
        message = "A Draw Game";
        break;
      default:
        break;
    }

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                letterSpacing: 2,
                fontWeight: FontWeight.w900,
                fontSize: 24,
                shadows: [
                  Shadow(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.2),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                  Shadow(
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary.withOpacity(0.2),
                    offset: Offset(0, -4),
                    blurRadius: 8,
                  ),
                ],
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                CustomButton(
                  text: "Home",
                  onTap: () {
                    context.router.replaceAll([HomeRoute()]);
                  },
                ),
                CustomButton(
                  text: "Replay",
                  onTap: () {
                    //reset game after saving
                    cubit.resetState();
                    // Pop the dialog
                    context.router.pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
