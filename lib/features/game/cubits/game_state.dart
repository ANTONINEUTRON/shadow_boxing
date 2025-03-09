import 'package:equatable/equatable.dart';
import 'package:shadow_boxing/data/enums/game_mode.dart';

enum GameStatus {
  initial,
  loading, // show processing sign
  loaded, // show game screen with starting prompt
  playing, // user has clicked start button
  paused, // user has clicked pause button
  completed, // user has completed the game
  error, // show user an error message
}

class GameState extends Equatable {
  const GameState({
    this.gameMode,
  });

  final GameMode? gameMode;

  @override
  List<Object?> get props => [
    gameMode,
  ];

  GameState copyWith({
    GameMode? gameMode,
  }) {
    return GameState(
      gameMode: gameMode ?? this.gameMode,
    );
  }
}
