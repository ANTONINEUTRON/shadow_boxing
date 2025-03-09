import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/shared/widgets/base_scaffold.dart';
import 'package:shadow_boxing/shared/widgets/custom_rect_button.dart';

@RoutePage()
class GameConfigPage extends StatefulWidget {
  const GameConfigPage({super.key});

  @override
  State<GameConfigPage> createState() => _GameConfigPageState();
}

class _GameConfigPageState extends State<GameConfigPage> {
  String userTheme = "";
  int guesses = 3;
  int gameDuration = 30;

  @override
  Widget build(BuildContext context) {
    // var gameCubit = context.watch<GameCubit>();
    var isLoading = false;

    // switch (gameCubit.state.status) {
    //   case GameStatus.loading:
    //     isLoading = true;
    //     break;
    //   case GameStatus.loaded:
    //     break;
    //   default:
    //     break;
    // }

    // if(gameCubit.state.initResponse.isNotEmpty){
    //     context.router.replace(GamePlayRoute());

    // }

    return BaseScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                "Game Setup",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // SizedBox(height: 16),
            // SelectDuration(
            //   onDurationChanged: (duration) => gameDuration = duration,
            // ),
            // SizedBox(height: 16),
            // SelectGuesses(onGuessesChanged: (guess) => guesses = guess),
            // SizedBox(height: 16),
            // GameConfigTextField(onThemeChanged: (theme) => userTheme = theme),
            // SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomRectButton(
                text: 'Play',

                onTap:
                    isLoading
                        ? null
                        : () {
                          var error = _validateTheme(userTheme);

                          if (error != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(error),
                                backgroundColor:
                                    Theme.of(context).colorScheme.error,
                              ),
                            );
                            return;
                          } else {
                            // Initialize Game
                            // gameCubit.initializeGame(
                            //   userTheme,
                            //   gameDuration,
                            //   guesses,
                            // );
                            // context.router.push(GamePlayRoute());
                          }
                        },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _validateTheme(String? value) {
    if (value == null || value.isEmpty) return "Enter a theme";

    final wordCount =
        value.trim().split(' ').where((word) => word.isNotEmpty).length;
    return wordCount > 2
        ? 'Theme should not be more than 2 words a good hint is to enter something around your interest'
        : null;
  }
}
