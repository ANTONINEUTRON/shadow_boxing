import 'package:equatable/equatable.dart';
import 'package:shadow_boxing/data/enums/game_mode.dart';
import 'package:shadow_boxing/data/enums/game_winner.dart';
import 'package:shadow_boxing/data/enums/moves.dart';
import 'package:shadow_boxing/data/enums/player.dart';
import 'package:shadow_boxing/data/models/game.dart';

enum GameStatus {
  initial,
  loaded, // show game screen with starting prompt
  // playing, // user has clicked start button
  playShown,
  playShowing,
  completed, // user has completed the game
  shownResult, // show user the result of the game
  error, // show user an error message
}

class GameState extends Equatable {
  const GameState({
    this.gameStatus = GameStatus.initial,
    this.gameMode,
    this.isMainPlayerStarting = true,
    this.round = 1,
    this.roundsNotice = "Round 1",
    this.mainPlayerMoves = const {},
    this.otherPlayerMoves = const {},
    this.attackingPlayer = Player.mainPlayer,
    this.mainPlayerScore = 0,
    this.otherPlayerScore = 0,
    this.gameWinner = GameWinner.none,
    this.gamesPlay = const [],
  });

  // const GameState.empty()
  //     : gameStatus = GameStatus.initial,
  //       gameMode = null,
  //       isMainPlayerStarting = true,
  //       rounds = 1,
  //       notice = "Round 1",
  //       mainPlayerMoves = const {},
  //       otherPlayerMoves = const {},
  //       attackingPlayer = Player.mainPlayer,
  //       mainPlayerScore = 0,
  //       otherPlayerScore = 0,
  //       gameWinner = GameWinner.none;

  final GameMode? gameMode;
  final GameStatus gameStatus;
  final bool isMainPlayerStarting;
  final int round;
  final String roundsNotice;
  final Player attackingPlayer;
  final Set<Moves> mainPlayerMoves;
  final Set<Moves> otherPlayerMoves;
  final int mainPlayerScore;
  final int otherPlayerScore;
  final GameWinner gameWinner;
  final List<Game> gamesPlay;

  @override
  List<Object?> get props => [
    gameMode,
    gameStatus,
    isMainPlayerStarting,
    round,
    roundsNotice,
    mainPlayerMoves,
    otherPlayerMoves,
    attackingPlayer,
    mainPlayerScore,
    otherPlayerScore,
    gameWinner,
    gamesPlay,
  ];

  GameState copyWith({
    GameMode? gameMode,
    GameStatus? gameStatus,
    bool? isMainPlayerStarting,
    int? round,
    String? roundsNotice,
    Set<Moves>? mainPlayerMoves,
    Set<Moves>? otherPlayerMoves,
    Player? attackingPlayer,
    int? mainPlayerScore,
    int? otherPlayerScore,
    GameWinner? gameWinner,
    List<Game>? gamesPlay,
  }) {
    return GameState(
      gameMode: gameMode ?? this.gameMode,
      gameStatus: gameStatus ?? this.gameStatus,
      isMainPlayerStarting: isMainPlayerStarting ?? this.isMainPlayerStarting,
      round: round ?? this.round,
      roundsNotice: roundsNotice ?? this.roundsNotice,
      mainPlayerMoves: mainPlayerMoves ?? this.mainPlayerMoves,
      otherPlayerMoves: otherPlayerMoves ?? this.otherPlayerMoves,
      attackingPlayer: attackingPlayer ?? this.attackingPlayer,
      mainPlayerScore: mainPlayerScore ?? this.mainPlayerScore,
      otherPlayerScore: otherPlayerScore ?? this.otherPlayerScore,
      gameWinner: gameWinner ?? this.gameWinner,
      gamesPlay: gamesPlay ?? this.gamesPlay,
    );
  }
}
