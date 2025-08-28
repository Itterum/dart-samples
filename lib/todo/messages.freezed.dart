// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chunk _$ChunkFromJson(Map<String, dynamic> json) {
  return _Chunk.fromJson(json);
}

/// @nodoc
mixin _$Chunk {
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'done_reason')
  String? get doneReason => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_duration')
  int? get totalDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'load_duration')
  int? get loadDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'prompt_eval_count')
  int? get promptEvalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'prompt_eval_duration')
  int? get promptEvalDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'eval_count')
  int? get evalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'eval_duration')
  int? get evalDuration => throw _privateConstructorUsedError;

  /// Serializes this Chunk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChunkCopyWith<Chunk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChunkCopyWith<$Res> {
  factory $ChunkCopyWith(Chunk value, $Res Function(Chunk) then) =
      _$ChunkCopyWithImpl<$Res, Chunk>;
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') String createdAt,
      Message message,
      @JsonKey(name: 'done_reason') String? doneReason,
      bool done,
      @JsonKey(name: 'total_duration') int? totalDuration,
      @JsonKey(name: 'load_duration') int? loadDuration,
      @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
      @JsonKey(name: 'eval_count') int? evalCount,
      @JsonKey(name: 'eval_duration') int? evalDuration});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChunkCopyWithImpl<$Res, $Val extends Chunk>
    implements $ChunkCopyWith<$Res> {
  _$ChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? message = null,
    Object? doneReason = freezed,
    Object? done = null,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      doneReason: freezed == doneReason
          ? _value.doneReason
          : doneReason // ignore: cast_nullable_to_non_nullable
              as String?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      loadDuration: freezed == loadDuration
          ? _value.loadDuration
          : loadDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalCount: freezed == promptEvalCount
          ? _value.promptEvalCount
          : promptEvalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalDuration: freezed == promptEvalDuration
          ? _value.promptEvalDuration
          : promptEvalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evalCount: freezed == evalCount
          ? _value.evalCount
          : evalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      evalDuration: freezed == evalDuration
          ? _value.evalDuration
          : evalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Chunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChunkImplCopyWith<$Res> implements $ChunkCopyWith<$Res> {
  factory _$$ChunkImplCopyWith(
          _$ChunkImpl value, $Res Function(_$ChunkImpl) then) =
      __$$ChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') String createdAt,
      Message message,
      @JsonKey(name: 'done_reason') String? doneReason,
      bool done,
      @JsonKey(name: 'total_duration') int? totalDuration,
      @JsonKey(name: 'load_duration') int? loadDuration,
      @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
      @JsonKey(name: 'eval_count') int? evalCount,
      @JsonKey(name: 'eval_duration') int? evalDuration});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChunkImplCopyWithImpl<$Res>
    extends _$ChunkCopyWithImpl<$Res, _$ChunkImpl>
    implements _$$ChunkImplCopyWith<$Res> {
  __$$ChunkImplCopyWithImpl(
      _$ChunkImpl _value, $Res Function(_$ChunkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chunk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? message = null,
    Object? doneReason = freezed,
    Object? done = null,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_$ChunkImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      doneReason: freezed == doneReason
          ? _value.doneReason
          : doneReason // ignore: cast_nullable_to_non_nullable
              as String?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      loadDuration: freezed == loadDuration
          ? _value.loadDuration
          : loadDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalCount: freezed == promptEvalCount
          ? _value.promptEvalCount
          : promptEvalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalDuration: freezed == promptEvalDuration
          ? _value.promptEvalDuration
          : promptEvalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evalCount: freezed == evalCount
          ? _value.evalCount
          : evalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      evalDuration: freezed == evalDuration
          ? _value.evalDuration
          : evalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChunkImpl implements _Chunk {
  const _$ChunkImpl(
      {required this.model,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.message,
      @JsonKey(name: 'done_reason') this.doneReason,
      required this.done,
      @JsonKey(name: 'total_duration') this.totalDuration,
      @JsonKey(name: 'load_duration') this.loadDuration,
      @JsonKey(name: 'prompt_eval_count') this.promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') this.promptEvalDuration,
      @JsonKey(name: 'eval_count') this.evalCount,
      @JsonKey(name: 'eval_duration') this.evalDuration});

  factory _$ChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChunkImplFromJson(json);

  @override
  final String model;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final Message message;
  @override
  @JsonKey(name: 'done_reason')
  final String? doneReason;
  @override
  final bool done;
  @override
  @JsonKey(name: 'total_duration')
  final int? totalDuration;
  @override
  @JsonKey(name: 'load_duration')
  final int? loadDuration;
  @override
  @JsonKey(name: 'prompt_eval_count')
  final int? promptEvalCount;
  @override
  @JsonKey(name: 'prompt_eval_duration')
  final int? promptEvalDuration;
  @override
  @JsonKey(name: 'eval_count')
  final int? evalCount;
  @override
  @JsonKey(name: 'eval_duration')
  final int? evalDuration;

  @override
  String toString() {
    return 'Chunk(model: $model, createdAt: $createdAt, message: $message, doneReason: $doneReason, done: $done, totalDuration: $totalDuration, loadDuration: $loadDuration, promptEvalCount: $promptEvalCount, promptEvalDuration: $promptEvalDuration, evalCount: $evalCount, evalDuration: $evalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChunkImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.doneReason, doneReason) ||
                other.doneReason == doneReason) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.loadDuration, loadDuration) ||
                other.loadDuration == loadDuration) &&
            (identical(other.promptEvalCount, promptEvalCount) ||
                other.promptEvalCount == promptEvalCount) &&
            (identical(other.promptEvalDuration, promptEvalDuration) ||
                other.promptEvalDuration == promptEvalDuration) &&
            (identical(other.evalCount, evalCount) ||
                other.evalCount == evalCount) &&
            (identical(other.evalDuration, evalDuration) ||
                other.evalDuration == evalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      createdAt,
      message,
      doneReason,
      done,
      totalDuration,
      loadDuration,
      promptEvalCount,
      promptEvalDuration,
      evalCount,
      evalDuration);

  /// Create a copy of Chunk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChunkImplCopyWith<_$ChunkImpl> get copyWith =>
      __$$ChunkImplCopyWithImpl<_$ChunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChunkImplToJson(
      this,
    );
  }
}

abstract class _Chunk implements Chunk {
  const factory _Chunk(
      {required final String model,
      @JsonKey(name: 'created_at') required final String createdAt,
      required final Message message,
      @JsonKey(name: 'done_reason') final String? doneReason,
      required final bool done,
      @JsonKey(name: 'total_duration') final int? totalDuration,
      @JsonKey(name: 'load_duration') final int? loadDuration,
      @JsonKey(name: 'prompt_eval_count') final int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') final int? promptEvalDuration,
      @JsonKey(name: 'eval_count') final int? evalCount,
      @JsonKey(name: 'eval_duration') final int? evalDuration}) = _$ChunkImpl;

  factory _Chunk.fromJson(Map<String, dynamic> json) = _$ChunkImpl.fromJson;

  @override
  String get model;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  Message get message;
  @override
  @JsonKey(name: 'done_reason')
  String? get doneReason;
  @override
  bool get done;
  @override
  @JsonKey(name: 'total_duration')
  int? get totalDuration;
  @override
  @JsonKey(name: 'load_duration')
  int? get loadDuration;
  @override
  @JsonKey(name: 'prompt_eval_count')
  int? get promptEvalCount;
  @override
  @JsonKey(name: 'prompt_eval_duration')
  int? get promptEvalDuration;
  @override
  @JsonKey(name: 'eval_count')
  int? get evalCount;
  @override
  @JsonKey(name: 'eval_duration')
  int? get evalDuration;

  /// Create a copy of Chunk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChunkImplCopyWith<_$ChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChunksResponse _$ChunksResponseFromJson(Map<String, dynamic> json) {
  return _ChunksResponse.fromJson(json);
}

/// @nodoc
mixin _$ChunksResponse {
  List<Chunk> get chunks => throw _privateConstructorUsedError;

  /// Serializes this ChunksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChunksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChunksResponseCopyWith<ChunksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChunksResponseCopyWith<$Res> {
  factory $ChunksResponseCopyWith(
          ChunksResponse value, $Res Function(ChunksResponse) then) =
      _$ChunksResponseCopyWithImpl<$Res, ChunksResponse>;
  @useResult
  $Res call({List<Chunk> chunks});
}

/// @nodoc
class _$ChunksResponseCopyWithImpl<$Res, $Val extends ChunksResponse>
    implements $ChunksResponseCopyWith<$Res> {
  _$ChunksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChunksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chunks = null,
  }) {
    return _then(_value.copyWith(
      chunks: null == chunks
          ? _value.chunks
          : chunks // ignore: cast_nullable_to_non_nullable
              as List<Chunk>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChunksResponseImplCopyWith<$Res>
    implements $ChunksResponseCopyWith<$Res> {
  factory _$$ChunksResponseImplCopyWith(_$ChunksResponseImpl value,
          $Res Function(_$ChunksResponseImpl) then) =
      __$$ChunksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chunk> chunks});
}

/// @nodoc
class __$$ChunksResponseImplCopyWithImpl<$Res>
    extends _$ChunksResponseCopyWithImpl<$Res, _$ChunksResponseImpl>
    implements _$$ChunksResponseImplCopyWith<$Res> {
  __$$ChunksResponseImplCopyWithImpl(
      _$ChunksResponseImpl _value, $Res Function(_$ChunksResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChunksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chunks = null,
  }) {
    return _then(_$ChunksResponseImpl(
      chunks: null == chunks
          ? _value._chunks
          : chunks // ignore: cast_nullable_to_non_nullable
              as List<Chunk>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChunksResponseImpl implements _ChunksResponse {
  const _$ChunksResponseImpl({required final List<Chunk> chunks})
      : _chunks = chunks;

  factory _$ChunksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChunksResponseImplFromJson(json);

  final List<Chunk> _chunks;
  @override
  List<Chunk> get chunks {
    if (_chunks is EqualUnmodifiableListView) return _chunks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chunks);
  }

  @override
  String toString() {
    return 'ChunksResponse(chunks: $chunks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChunksResponseImpl &&
            const DeepCollectionEquality().equals(other._chunks, _chunks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chunks));

  /// Create a copy of ChunksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChunksResponseImplCopyWith<_$ChunksResponseImpl> get copyWith =>
      __$$ChunksResponseImplCopyWithImpl<_$ChunksResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChunksResponseImplToJson(
      this,
    );
  }
}

abstract class _ChunksResponse implements ChunksResponse {
  const factory _ChunksResponse({required final List<Chunk> chunks}) =
      _$ChunksResponseImpl;

  factory _ChunksResponse.fromJson(Map<String, dynamic> json) =
      _$ChunksResponseImpl.fromJson;

  @override
  List<Chunk> get chunks;

  /// Create a copy of ChunksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChunksResponseImplCopyWith<_$ChunksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$MessageImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({required this.role, required this.content});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'Message(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final String role,
      required final String content}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String get role;
  @override
  String get content;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
