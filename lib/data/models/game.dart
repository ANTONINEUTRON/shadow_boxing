import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shadow_boxing/data/enums/moves.dart';

part 'game.g.dart';
part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required int id,
    required List<String> players, // player1, player2
    required int player1Score,
    required int player2Score,
    required List<Moves> player1Moves,
    required List<Moves> player2Moves,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
