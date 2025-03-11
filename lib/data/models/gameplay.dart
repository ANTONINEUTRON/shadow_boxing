import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shadow_boxing/data/models/game.dart';

part 'gameplay.g.dart';
part 'gameplay.freezed.dart';

@freezed
class GamePlay with _$GamePlay {
  const factory GamePlay({
    required String id,
    required List<Game> games,
    required int time,
  }) = _GamePlay;

  factory GamePlay.fromJson(Map<String, dynamic> json) =>
      _$GamePlayFromJson(json);
}
