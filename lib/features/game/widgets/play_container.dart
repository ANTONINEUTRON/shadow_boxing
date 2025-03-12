import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/data/enums/game_winner.dart';
import 'package:shadow_boxing/data/enums/moves.dart';
import 'package:shadow_boxing/data/enums/player.dart';
import 'package:shadow_boxing/features/game/cubits/game_cubit.dart';
import 'package:shadow_boxing/features/game/dialogs/game_over_dialog.dart';
import 'package:shadow_boxing/features/game/widgets/player_card.dart';

class PlayContainer extends StatefulWidget {
  const PlayContainer({super.key});

  @override
  State<PlayContainer> createState() => _PlayContainerState();
}

class _PlayContainerState extends State<PlayContainer>
    with SingleTickerProviderStateMixin {
  Color topArrowColor = Colors.black;
  Color bottomArrowColor = Colors.black;
  Color leftArrowColor = Colors.black;
  Color rightArrowColor = Colors.black;

  // Player playerRound = Player.mainPlayer;

  bool isAnimating = false;
  late Size containerSize;

  @override
  Widget build(BuildContext context) {
    var gameCubit = context.watch<GameCubit>();
    var gameState = gameCubit.state;
    bool isMainPlayerRound = gameState.attackingPlayer == Player.mainPlayer;
    var mainPlayerMoves = gameState.mainPlayerMoves;

    // Listen if game has been won
    if (gameState.gamesPlay.length == gameState.round) {
      WidgetsBinding.instance.addPostFrameCallback((duration) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return GameOverDialog();
          },
        );
      });
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        containerSize = Size(constraints.maxWidth, constraints.maxHeight);
        final centerX = (containerSize.width - 200) / 2; // card width
        final centerY = (containerSize.height - 100) / 2.8; // card height

        return GestureDetector(
          onVerticalDragEnd: (details) {
            if (details.velocity.pixelsPerSecond.dy > 0) {
              // Swipe down
              if (!mainPlayerMoves.contains(Moves.bottom)) {
                gameCubit.recordMainPlayerMove(
                  mainPlayerMoves: {...mainPlayerMoves, Moves.bottom},
                );
              }
            } else if (details.velocity.pixelsPerSecond.dy < 0) {
              // Swipe up
              if (!mainPlayerMoves.contains(Moves.top)) {
                gameCubit.recordMainPlayerMove(
                  mainPlayerMoves: {...mainPlayerMoves, Moves.top},
                );
              }
            }
          },
          onHorizontalDragEnd: (details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              // Swipe right
              if (!mainPlayerMoves.contains(Moves.right)) {
                
              }gameCubit.recordMainPlayerMove(
                  mainPlayerMoves: {...mainPlayerMoves, Moves.right},
                );
            } else if (details.velocity.pixelsPerSecond.dx < 0) {
              // Swipe left
              if (!mainPlayerMoves.contains(Moves.left)) {
                gameCubit.recordMainPlayerMove(
                  mainPlayerMoves: {...mainPlayerMoves, Moves.left},
                );
              }
            }
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                // Player 1 Card (Bottom Right)
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  bottom: !isMainPlayerRound ? centerY : 10,
                  right: !isMainPlayerRound ? centerX : 10,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    transform: _getMatrixByMove(
                      isCentered: !isMainPlayerRound,
                      moves:
                          mainPlayerMoves.isEmpty
                              ? Moves.none
                              : mainPlayerMoves.last,
                    ),
                    child: PlayerCard(
                      playerName: "Player 1",
                      isCentered: !isMainPlayerRound,
                    ),
                  ),
                ),

                // Player 2 Card (Top Left)
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  top: isMainPlayerRound ? centerY : 10,
                  left: isMainPlayerRound ? centerX : 10,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    transform: _getMatrixByMove(
                      isCentered: isMainPlayerRound,
                      moves:
                          gameState.otherPlayerMoves.isEmpty
                              ? Moves.none
                              : gameState.otherPlayerMoves.last,
                    ),
                    child: PlayerCard(
                      playerName: "Player 2",
                      isCentered: isMainPlayerRound,
                    ),
                  ),
                ),

                // Top Arrow
                Positioned(
                  top: 16,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Icon(
                      Icons.keyboard_double_arrow_up,
                      size: 48,
                      color: mainPlayerMoves.contains(Moves.top) ? Colors.red : Colors.black,
                    ),
                  ),
                ),

                // Bottom Arrow
                Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Icon(
                      Icons.keyboard_double_arrow_down,
                      size: 48,
                      color: mainPlayerMoves.contains(Moves.bottom) ? Colors.red : Colors.black,
                    ),
                  ),
                ),

                // Left Arrow
                Positioned(
                  left: 16,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Icon(
                      Icons.keyboard_double_arrow_left,
                      size: 48,
                      color: mainPlayerMoves.contains(Moves.left) ? Colors.red : Colors.black,
                    ),
                  ),
                ),

                // Right Arrow
                Positioned(
                  right: 16,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Icon(
                      Icons.keyboard_double_arrow_right,
                      size: 48,
                      color: mainPlayerMoves.contains(Moves.right) ? Colors.red : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Matrix4? _getMatrixByMove({required bool isCentered, required Moves moves}) {
    if (!isCentered) return null;

    switch (moves) {
      case Moves.right:
        return Matrix4.identity()
          ..setEntry(3, 2, 0.002) // Lower perspective distortion
          ..rotateY(-0.3); // Slightly more natural angle
      case Moves.left:
        return Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(0.3);
      case Moves.bottom:
        return Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateX(0.3);
      case Moves.top:
        return Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateX(-0.3);
      default:
        return Matrix4.identity();
    }
  }
}
