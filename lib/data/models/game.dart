import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.g.dart';
part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required int id,
    required String player1,
    required String player2,
    required int player1Score,
    required int player2Score,
    required List<int> player1Moves,
    required List<int> player2Moves,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
