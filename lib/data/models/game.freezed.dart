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
  List<String> get players =>
      throw _privateConstructorUsedError; // player1, player2
  int get player1Score => throw _privateConstructorUsedError;
  int get player2Score => throw _privateConstructorUsedError;
  List<Moves> get player1Moves => throw _privateConstructorUsedError;
  List<Moves> get player2Moves => throw _privateConstructorUsedError;

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
    List<String> players,
    int player1Score,
    int player2Score,
    List<Moves> player1Moves,
    List<Moves> player2Moves,
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
    Object? players = null,
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
            players:
                null == players
                    ? _value.players
                    : players // ignore: cast_nullable_to_non_nullable
                        as List<String>,
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
                        as List<Moves>,
            player2Moves:
                null == player2Moves
                    ? _value.player2Moves
                    : player2Moves // ignore: cast_nullable_to_non_nullable
                        as List<Moves>,
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
    List<String> players,
    int player1Score,
    int player2Score,
    List<Moves> player1Moves,
    List<Moves> player2Moves,
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
    Object? players = null,
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
        players:
            null == players
                ? _value._players
                : players // ignore: cast_nullable_to_non_nullable
                    as List<String>,
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
                    as List<Moves>,
        player2Moves:
            null == player2Moves
                ? _value._player2Moves
                : player2Moves // ignore: cast_nullable_to_non_nullable
                    as List<Moves>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl({
    required this.id,
    required final List<String> players,
    required this.player1Score,
    required this.player2Score,
    required final List<Moves> player1Moves,
    required final List<Moves> player2Moves,
  }) : _players = players,
       _player1Moves = player1Moves,
       _player2Moves = player2Moves;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final int id;
  final List<String> _players;
  @override
  List<String> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  // player1, player2
  @override
  final int player1Score;
  @override
  final int player2Score;
  final List<Moves> _player1Moves;
  @override
  List<Moves> get player1Moves {
    if (_player1Moves is EqualUnmodifiableListView) return _player1Moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_player1Moves);
  }

  final List<Moves> _player2Moves;
  @override
  List<Moves> get player2Moves {
    if (_player2Moves is EqualUnmodifiableListView) return _player2Moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_player2Moves);
  }

  @override
  String toString() {
    return 'Game(id: $id, players: $players, player1Score: $player1Score, player2Score: $player2Score, player1Moves: $player1Moves, player2Moves: $player2Moves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
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
    const DeepCollectionEquality().hash(_players),
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
    required final List<String> players,
    required final int player1Score,
    required final int player2Score,
    required final List<Moves> player1Moves,
    required final List<Moves> player2Moves,
  }) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int get id;
  @override
  List<String> get players; // player1, player2
  @override
  int get player1Score;
  @override
  int get player2Score;
  @override
  List<Moves> get player1Moves;
  @override
  List<Moves> get player2Moves;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
