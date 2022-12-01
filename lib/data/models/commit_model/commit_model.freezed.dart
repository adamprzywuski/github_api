// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitModel _$CommitModelFromJson(Map<String, dynamic> json) {
  return _CommitModel.fromJson(json);
}

/// @nodoc
mixin _$CommitModel {
  String get message => throw _privateConstructorUsedError;
  AuthorModel get author => throw _privateConstructorUsedError;
  String get sha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitModelCopyWith<CommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitModelCopyWith<$Res> {
  factory $CommitModelCopyWith(
          CommitModel value, $Res Function(CommitModel) then) =
      _$CommitModelCopyWithImpl<$Res, CommitModel>;
  @useResult
  $Res call({String message, AuthorModel author, String sha});

  $AuthorModelCopyWith<$Res> get author;
}

/// @nodoc
class _$CommitModelCopyWithImpl<$Res, $Val extends CommitModel>
    implements $CommitModelCopyWith<$Res> {
  _$CommitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? author = null,
    Object? sha = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel,
      sha: null == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorModelCopyWith<$Res> get author {
    return $AuthorModelCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommitModelCopyWith<$Res>
    implements $CommitModelCopyWith<$Res> {
  factory _$$_CommitModelCopyWith(
          _$_CommitModel value, $Res Function(_$_CommitModel) then) =
      __$$_CommitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AuthorModel author, String sha});

  @override
  $AuthorModelCopyWith<$Res> get author;
}

/// @nodoc
class __$$_CommitModelCopyWithImpl<$Res>
    extends _$CommitModelCopyWithImpl<$Res, _$_CommitModel>
    implements _$$_CommitModelCopyWith<$Res> {
  __$$_CommitModelCopyWithImpl(
      _$_CommitModel _value, $Res Function(_$_CommitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? author = null,
    Object? sha = null,
  }) {
    return _then(_$_CommitModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel,
      sha: null == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitModel implements _CommitModel {
  const _$_CommitModel(
      {required this.message, required this.author, required this.sha});

  factory _$_CommitModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommitModelFromJson(json);

  @override
  final String message;
  @override
  final AuthorModel author;
  @override
  final String sha;

  @override
  String toString() {
    return 'CommitModel(message: $message, author: $author, sha: $sha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.sha, sha) || other.sha == sha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, author, sha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitModelCopyWith<_$_CommitModel> get copyWith =>
      __$$_CommitModelCopyWithImpl<_$_CommitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitModelToJson(
      this,
    );
  }
}

abstract class _CommitModel implements CommitModel {
  const factory _CommitModel(
      {required final String message,
      required final AuthorModel author,
      required final String sha}) = _$_CommitModel;

  factory _CommitModel.fromJson(Map<String, dynamic> json) =
      _$_CommitModel.fromJson;

  @override
  String get message;
  @override
  AuthorModel get author;
  @override
  String get sha;
  @override
  @JsonKey(ignore: true)
  _$$_CommitModelCopyWith<_$_CommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
