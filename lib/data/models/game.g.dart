// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
  id: (json['id'] as num).toInt(),
  player1: json['player1'] as String,
  player2: json['player2'] as String,
  player1Score: (json['player1Score'] as num).toInt(),
  player2Score: (json['player2Score'] as num).toInt(),
  player1Moves:
      (json['player1Moves'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  player2Moves:
      (json['player2Moves'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
);

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'player1': instance.player1,
      'player2': instance.player2,
      'player1Score': instance.player1Score,
      'player2Score': instance.player2Score,
      'player1Moves': instance.player1Moves,
      'player2Moves': instance.player2Moves,
    };
