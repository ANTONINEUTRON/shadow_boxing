import 'package:equatable/equatable.dart';
import 'package:shadow_boxing/data/enums/game_mode.dart';

enum GameStatus {
  initial,
  // loading, // show processing sign
  loaded, // show game screen with starting prompt
  playing, // user has clicked start button
  paused, // user has clicked pause button
  completed, // user has completed the game
  error, // show user an error message
}

class GameState extends Equatable {
  const GameState( {
    this.gameStatus = GameStatus.initial,
    this.gameMode,
    this.isPlayerOneStarting = true,
    this.rounds = 1,this.notice = "Round 1",
  });

  final GameMode? gameMode;
  final GameStatus gameStatus;
  final bool isPlayerOneStarting;
  final int rounds;
  final String notice;

  @override
  List<Object?> get props => [
    gameMode,
    gameStatus,
    isPlayerOneStarting,
    rounds,
    notice,
  ];

  GameState copyWith({
    GameMode? gameMode,
    GameStatus? gameStatus,
    bool? isPlayerOneStarting,
    int? rounds,
    String? notice,
  }) {
    return GameState(
      gameMode: gameMode ?? this.gameMode,
      gameStatus: gameStatus ?? this.gameStatus,
      isPlayerOneStarting: isPlayerOneStarting ?? this.isPlayerOneStarting,
      rounds: rounds ?? this.rounds,
      notice: notice ?? this.notice,
    );
  }
}
