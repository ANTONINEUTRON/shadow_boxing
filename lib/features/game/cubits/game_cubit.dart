import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/data/enums/game_mode.dart';
import 'package:shadow_boxing/data/enums/game_winner.dart';
import 'package:shadow_boxing/data/enums/moves.dart';
import 'package:shadow_boxing/data/enums/player.dart';
import 'package:shadow_boxing/features/game/cubits/game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameState());

  void setGameMode({required GameMode gameMode}) {
    emit(state.copyWith(gameMode: gameMode));
  }

  void initializeGame({
    required int gameRounds,
    required bool isMainPlayerStarting,
  }) {
    emit(
      state.copyWith(
        gameStatus: GameStatus.loaded,
        round: gameRounds,
        isMainPlayerStarting: isMainPlayerStarting,
      ),
    );
  }

  void playNextRound(){
    emit(state.copyWith(round: state.round + 1));
  }

  void recordMainPlayerMove({required Set<Moves> mainPlayerMoves}) {
    
    // check for who is attacking
    // if main player is attacking, get other player's move
    //// compare moves, if attacking matches defender moves, record moves and switch attacking player
    //// if attacking does not match defender moves, record moves and continue
    // if main player is not attacking, get other player move
    //// compare moves, if attacking matches defender moves, record moves and switch attacking player
    //// if attacking does not match defender moves, record moves and continue

    var isMainPlayerAttacking = state.attackingPlayer == Player.mainPlayer;

    var otherPlayerMoves = _getOtherPlayerMoves(
      expected: mainPlayerMoves.length,
      previousMoves: state.otherPlayerMoves.toList(),
    );

    var playIndex = mainPlayerMoves.length - 1;
    print('\n=== Round ${playIndex + 1} ===');
    print(
      'Current Attacking Player: ${isMainPlayerAttacking ? "Main Player" : "Other Player"}',
    );

    var attkingPlay =
        isMainPlayerAttacking
            ? mainPlayerMoves.elementAt(playIndex)
            : otherPlayerMoves.elementAt(playIndex);
    var defendingPlay =
        isMainPlayerAttacking
            ? otherPlayerMoves.elementAt(playIndex)
            : mainPlayerMoves.elementAt(playIndex);

    print('Attacking Move: $attkingPlay');
    print('Defending Move: $defendingPlay');

    // check if main player is attacking
    var attackingPlayer = state.attackingPlayer;
    if (attkingPlay == defendingPlay) {
      print('Moves Match! Switching attacking player');
      // switch attacking player
      attackingPlayer =
          isMainPlayerAttacking ? Player.otherPlayer : Player.mainPlayer;
      print(
        'New Attacking Player: ${attackingPlayer == Player.mainPlayer ? "Main Player" : "Other Player"}',
      );
    }

    print('Main Player Moves: $mainPlayerMoves');
    print('Other Player Moves: $otherPlayerMoves\n');

    emit(
      state.copyWith(
        attackingPlayer: attackingPlayer,
        mainPlayerMoves: mainPlayerMoves,
        otherPlayerMoves: otherPlayerMoves,
        roundsNotice: isMainPlayerAttacking ? "Your Turn" : "Opponent's Turn",
        gameStatus:
            mainPlayerMoves.length < 4
                ? GameStatus.playShowing
                : GameStatus.completed,
        mainPlayerScore:
            attackingPlayer == Player.mainPlayer
                ? state.mainPlayerScore + 1
                : state.mainPlayerScore,
        otherPlayerScore:
            attackingPlayer == Player.otherPlayer
                ? state.otherPlayerScore + 1
                : state.otherPlayerScore,
      ),
    );

    // Check for winner after game is completed
    if (mainPlayerMoves.length >= 4 ||
        (state.mainPlayerScore - state.otherPlayerScore).abs() >= 3) {
      GameWinner? winner;
      if (state.mainPlayerScore > state.otherPlayerScore) {
        winner = GameWinner.mainPlayerWon;
      } else if (state.otherPlayerScore > state.mainPlayerScore) {
        winner = GameWinner.opponentWon;
      } else {
        winner = GameWinner.draw;
      }

      emit(state.copyWith(gameWinner: winner));
    }
  }

  Set<Moves> _getOtherPlayerMoves({
    int expected = 1,
    List<Moves> previousMoves = const [],
  }) {
    List<Moves> moves =
        Moves.values
            .where(
              (move) => !previousMoves.contains(move) && move != Moves.none,
            )
            .toList();
    var random = Random();
    var randomMove = moves[random.nextInt(moves.length)];

    return {...previousMoves, randomMove};
  }

  void resetState() {
    emit(GameState(isMainPlayerStarting: !state.isMainPlayerStarting));
  }
}
