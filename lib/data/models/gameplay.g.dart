// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gameplay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamePlayImpl _$$GamePlayImplFromJson(Map<String, dynamic> json) =>
    _$GamePlayImpl(
      id: json['id'] as String,
      games:
          (json['games'] as List<dynamic>)
              .map((e) => Game.fromJson(e as Map<String, dynamic>))
              .toList(),
      time: (json['time'] as num).toInt(),
    );

Map<String, dynamic> _$$GamePlayImplToJson(_$GamePlayImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'games': instance.games,
      'time': instance.time,
    };
