// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  int get id => throw _privateConstructorUsedError;
  String get player1 => throw _privateConstructorUsedError;
  String get player2 => throw _privateConstructorUsedError;
  int get player1Score => throw _privateConstructorUsedError;
  int get player2Score => throw _privateConstructorUsedError;
  List<int> get player1Moves => throw _privateConstructorUsedError;
  List<int> get player2Moves => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call({
    int id,
    String player1,
    String player2,
    int player1Score,
    int player2Score,
    List<int> player1Moves,
    List<int> player2Moves,
  });
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player1 = null,
    Object? player2 = null,
    Object? player1Score = null,
    Object? player2Score = null,
    Object? player1Moves = null,
    Object? player2Moves = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            player1:
                null == player1
                    ? _value.player1
                    : player1 // ignore: cast_nullable_to_non_nullable
                        as String,
            player2:
                null == player2
                    ? _value.player2
                    : player2 // ignore: cast_nullable_to_non_nullable
                        as String,
            player1Score:
                null == player1Score
                    ? _value.player1Score
                    : player1Score // ignore: cast_nullable_to_non_nullable
                        as int,
            player2Score:
                null == player2Score
                    ? _value.player2Score
                    : player2Score // ignore: cast_nullable_to_non_nullable
                        as int,
            player1Moves:
                null == player1Moves
                    ? _value.player1Moves
                    : player1Moves // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            player2Moves:
                null == player2Moves
                    ? _value.player2Moves
                    : player2Moves // ignore: cast_nullable_to_non_nullable
                        as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
    _$GameImpl value,
    $Res Function(_$GameImpl) then,
  ) = __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String player1,
    String player2,
    int player1Score,
    int player2Score,
    List<int> player1Moves,
    List<int> player2Moves,
  });
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
    : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? player1 = null,
    Object? player2 = null,
    Object? player1Score = null,
    Object? player2Score = null,
    Object? player1Moves = null,
    Object? player2Moves = null,
  }) {
    return _then(
      _$GameImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        player1:
            null == player1
                ? _value.player1
                : player1 // ignore: cast_nullable_to_non_nullable
                    as String,
        player2:
            null == player2
                ? _value.player2
                : player2 // ignore: cast_nullable_to_non_nullable
                    as String,
        player1Score:
            null == player1Score
                ? _value.player1Score
                : player1Score // ignore: cast_nullable_to_non_nullable
                    as int,
        player2Score:
            null == player2Score
                ? _value.player2Score
                : player2Score // ignore: cast_nullable_to_non_nullable
                    as int,
        player1Moves:
            null == player1Moves
                ? _value._player1Moves
                : player1Moves // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        player2Moves:
            null == player2Moves
                ? _value._player2Moves
                : player2Moves // ignore: cast_nullable_to_non_nullable
                    as List<int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl({
    required this.id,
    required this.player1,
    required this.player2,
    required this.player1Score,
    required this.player2Score,
    required final List<int> player1Moves,
    required final List<int> player2Moves,
  }) : _player1Moves = player1Moves,
       _player2Moves = player2Moves;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final int id;
  @override
  final String player1;
  @override
  final String player2;
  @override
  final int player1Score;
  @override
  final int player2Score;
  final List<int> _player1Moves;
  @override
  List<int> get player1Moves {
    if (_player1Moves is EqualUnmodifiableListView) return _player1Moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_player1Moves);
  }

  final List<int> _player2Moves;
  @override
  List<int> get player2Moves {
    if (_player2Moves is EqualUnmodifiableListView) return _player2Moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_player2Moves);
  }

  @override
  String toString() {
    return 'Game(id: $id, player1: $player1, player2: $player2, player1Score: $player1Score, player2Score: $player2Score, player1Moves: $player1Moves, player2Moves: $player2Moves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.player1, player1) || other.player1 == player1) &&
            (identical(other.player2, player2) || other.player2 == player2) &&
            (identical(other.player1Score, player1Score) ||
                other.player1Score == player1Score) &&
            (identical(other.player2Score, player2Score) ||
                other.player2Score == player2Score) &&
            const DeepCollectionEquality().equals(
              other._player1Moves,
              _player1Moves,
            ) &&
            const DeepCollectionEquality().equals(
              other._player2Moves,
              _player2Moves,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    player1,
    player2,
    player1Score,
    player2Score,
    const DeepCollectionEquality().hash(_player1Moves),
    const DeepCollectionEquality().hash(_player2Moves),
  );

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(this);
  }
}

abstract class _Game implements Game {
  const factory _Game({
    required final int id,
    required final String player1,
    required final String player2,
    required final int player1Score,
    required final int player2Score,
    required final List<int> player1Moves,
    required final List<int> player2Moves,
  }) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int get id;
  @override
  String get player1;
  @override
  String get player2;
  @override
  int get player1Score;
  @override
  int get player2Score;
  @override
  List<int> get player1Moves;
  @override
  List<int> get player2Moves;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
