import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/data/enums/game_mode.dart';
import 'package:shadow_boxing/data/enums/game_winner.dart';
import 'package:shadow_boxing/data/enums/moves.dart';
import 'package:shadow_boxing/data/enums/player.dart';
import 'package:shadow_boxing/data/models/game.dart';
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
    print("Rounds: $gameRounds");
    emit(
      GameState().copyWith(
        gameStatus: GameStatus.loaded,
        round: gameRounds,
        isMainPlayerStarting: isMainPlayerStarting,
        player1: "You",
        player2: "Opponent",
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

    var comment = _generateComment(
      attkingPlay == defendingPlay,
      state.mainPlayerScore + state.otherPlayerScore,
      isMainPlayerAttacking
    );

    emit(
      state.copyWith(
        attackingPlayer: attackingPlayer,
        mainPlayerMoves: mainPlayerMoves,
        otherPlayerMoves: otherPlayerMoves,
        roundsNotice: isMainPlayerAttacking ? "Your Turn" : "Opponent's Turn",
        comments: comment,
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

      // check if round equals gameplays list length
      // set gameWinner based on looping through the gamesPlay
      // if not, record current game and save to gamesPlay
      // reset some fields, start new game round
      if(state.round == state.gamesPlay.length){
        final updatedGames = [
          ...state.gamesPlay,
          Game(
            id: state.gamesPlay.length + 1,
            player1Moves: state.mainPlayerMoves.toList(),
            player2Moves: state.otherPlayerMoves.toList(),
            player1Score: state.mainPlayerScore,
            player2Score: state.otherPlayerScore,
            players: [state.player1, state.player2],
          )
        ];
        
        final winner = _determineOverallWinner(updatedGames);
        emit(state.copyWith(
          gamesPlay: updatedGames,
          gameWinner: winner
        ));
      } else {
        emit(state.copyWith(
          gamesPlay: [
            ...state.gamesPlay,
            Game(
              id: state.gamesPlay.length + 1,
              player1Moves: state.mainPlayerMoves.toList(),
              player2Moves: state.otherPlayerMoves.toList(),
              player1Score: state.mainPlayerScore,
              player2Score: state.otherPlayerScore,
              players: [state.player1, state.player2]
            ),
          ],
          mainPlayerMoves: {},
          otherPlayerMoves: {},
          mainPlayerScore: 0,
          otherPlayerScore: 0,
          attackingPlayer: Player.mainPlayer,
          roundsNotice: "Round ${state.round + 1}",
          gameStatus: GameStatus.loaded,
        ));
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
    emit(GameState(isMainPlayerStarting: state.isMainPlayerStarting));
  }

  String _generateComment(bool isMatch, int streak, bool isMainPlayerAttacking) {
    if (isMatch) {
      return [
        "Perfect match! The tables have turned!",
        "Great anticipation! Switching sides!",
        "Reading your opponent like a book!",
        "Defense mirrors attack - roles reversed!"
      ][Random().nextInt(4)];
    } else {
      if (isMainPlayerAttacking) {
        return [
          "Keep the pressure on!",
          "They didn't see that coming!",
          "Nice move! Stay focused!",
          "You've got them guessing!"
        ][Random().nextInt(4)];
      } else {
        return [
          "Stay sharp! Watch their moves!",
          "Defense is key!",
          "Focus on their pattern!",
          "Your turn to counter!"
        ][Random().nextInt(4)];
      }
    }
  }

  GameWinner _determineOverallWinner(List<Game> games) {
    int mainPlayerWins = 0;
    int otherPlayerWins = 0;

    for (var game in games) {
      if (game.player1Score > game.player2Score) {
        mainPlayerWins++;
      } else if (game.player2Score > game.player1Score) {
        otherPlayerWins++;
      }
    }

    print('Main Player Wins: $mainPlayerWins');
    print('Other Player Wins: $otherPlayerWins');

    if (mainPlayerWins > otherPlayerWins) {
      return GameWinner.mainPlayerWon;
    } else if (otherPlayerWins > mainPlayerWins) {
      return GameWinner.opponentWon;
    } else {
      return GameWinner.draw;
    }
  }
}
