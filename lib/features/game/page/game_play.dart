import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/features/game/dialogs/pause_dialog.dart';
import 'package:shadow_boxing/features/game/widgets/game_timer.dart';
import 'package:shadow_boxing/shared/widgets/base_scaffold.dart';
import 'package:shadow_boxing/shared/widgets/custom_icon_button.dart';

@RoutePage()
class GamePlayPage extends StatefulWidget {
  const GamePlayPage({super.key});

  @override
  State<GamePlayPage> createState() => _GamePlayPageState();
}

class _GamePlayPageState extends State<GamePlayPage> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   // showPauseDialog(context);
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return GameStartDialog();
    //     },
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: [
          // Top Row consisting timer and pause button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              //Timer
              GameTimer(),
              //
              //
              // Pause button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: CustomIconButton(
                  onPressed: () {
                    // context.read<GameCubit>().pauseGame();
                    showDialog(
                      context: context,
                      builder: (context) => PauseDialog(),
                    );
                  },
                  icon: const Icon(Icons.pause_circle_filled_outlined),
                ),
              ),
            ],
          ),
          // 1. Hints Section
          // AIHintsSection(),

          // 2. Word Display Section
          // Flexible(
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 16),
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: [
          //           Theme.of(context).colorScheme.primary.withOpacity(0.25),
          //           Theme.of(context).colorScheme.primary.withOpacity(0.25),
          //         ],
          //       ),
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     child: GuessedItem(),
          //   ),
          // ),

          // // 3. Guess Input Section
          // UserGuessSection(),
        ],
      ),
    );
  }
}
