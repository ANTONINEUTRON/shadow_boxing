// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gameplay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GamePlay _$GamePlayFromJson(Map<String, dynamic> json) {
  return _GamePlay.fromJson(json);
}

/// @nodoc
mixin _$GamePlay {
  String get id => throw _privateConstructorUsedError;
  List<Game> get games => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  /// Serializes this GamePlay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GamePlay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamePlayCopyWith<GamePlay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayCopyWith<$Res> {
  factory $GamePlayCopyWith(GamePlay value, $Res Function(GamePlay) then) =
      _$GamePlayCopyWithImpl<$Res, GamePlay>;
  @useResult
  $Res call({String id, List<Game> games, int time});
}

/// @nodoc
class _$GamePlayCopyWithImpl<$Res, $Val extends GamePlay>
    implements $GamePlayCopyWith<$Res> {
  _$GamePlayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamePlay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? games = null, Object? time = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            games:
                null == games
                    ? _value.games
                    : games // ignore: cast_nullable_to_non_nullable
                        as List<Game>,
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GamePlayImplCopyWith<$Res>
    implements $GamePlayCopyWith<$Res> {
  factory _$$GamePlayImplCopyWith(
    _$GamePlayImpl value,
    $Res Function(_$GamePlayImpl) then,
  ) = __$$GamePlayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<Game> games, int time});
}

/// @nodoc
class __$$GamePlayImplCopyWithImpl<$Res>
    extends _$GamePlayCopyWithImpl<$Res, _$GamePlayImpl>
    implements _$$GamePlayImplCopyWith<$Res> {
  __$$GamePlayImplCopyWithImpl(
    _$GamePlayImpl _value,
    $Res Function(_$GamePlayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GamePlay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? games = null, Object? time = null}) {
    return _then(
      _$GamePlayImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        games:
            null == games
                ? _value._games
                : games // ignore: cast_nullable_to_non_nullable
                    as List<Game>,
        time:
            null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GamePlayImpl implements _GamePlay {
  const _$GamePlayImpl({
    required this.id,
    required final List<Game> games,
    required this.time,
  }) : _games = games;

  factory _$GamePlayImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamePlayImplFromJson(json);

  @override
  final String id;
  final List<Game> _games;
  @override
  List<Game> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final int time;

  @override
  String toString() {
    return 'GamePlay(id: $id, games: $games, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_games),
    time,
  );

  /// Create a copy of GamePlay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePlayImplCopyWith<_$GamePlayImpl> get copyWith =>
      __$$GamePlayImplCopyWithImpl<_$GamePlayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamePlayImplToJson(this);
  }
}

abstract class _GamePlay implements GamePlay {
  const factory _GamePlay({
    required final String id,
    required final List<Game> games,
    required final int time,
  }) = _$GamePlayImpl;

  factory _GamePlay.fromJson(Map<String, dynamic> json) =
      _$GamePlayImpl.fromJson;

  @override
  String get id;
  @override
  List<Game> get games;
  @override
  int get time;

  /// Create a copy of GamePlay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePlayImplCopyWith<_$GamePlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
