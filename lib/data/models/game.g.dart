// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
  id: (json['id'] as num).toInt(),
  players: (json['players'] as List<dynamic>).map((e) => e as String).toList(),
  player1Score: (json['player1Score'] as num).toInt(),
  player2Score: (json['player2Score'] as num).toInt(),
  player1Moves:
      (json['player1Moves'] as List<dynamic>)
          .map((e) => $enumDecode(_$MovesEnumMap, e))
          .toList(),
  player2Moves:
      (json['player2Moves'] as List<dynamic>)
          .map((e) => $enumDecode(_$MovesEnumMap, e))
          .toList(),
);

Map<String, dynamic> _$$GameImplToJson(
  _$GameImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'players': instance.players,
  'player1Score': instance.player1Score,
  'player2Score': instance.player2Score,
  'player1Moves': instance.player1Moves.map((e) => _$MovesEnumMap[e]!).toList(),
  'player2Moves': instance.player2Moves.map((e) => _$MovesEnumMap[e]!).toList(),
};

const _$MovesEnumMap = {
  Moves.top: 'top',
  Moves.left: 'left',
  Moves.bottom: 'bottom',
  Moves.right: 'right',
  Moves.none: 'none',
};
