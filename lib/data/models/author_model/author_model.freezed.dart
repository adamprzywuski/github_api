// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'author_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) {
  return _AuthorModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorModelCopyWith<AuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorModelCopyWith<$Res> {
  factory $AuthorModelCopyWith(
          AuthorModel value, $Res Function(AuthorModel) then) =
      _$AuthorModelCopyWithImpl<$Res, AuthorModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthorModelCopyWithImpl<$Res, $Val extends AuthorModel>
    implements $AuthorModelCopyWith<$Res> {
  _$AuthorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorModelCopyWith<$Res>
    implements $AuthorModelCopyWith<$Res> {
  factory _$$_AuthorModelCopyWith(
          _$_AuthorModel value, $Res Function(_$_AuthorModel) then) =
      __$$_AuthorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthorModelCopyWithImpl<$Res>
    extends _$AuthorModelCopyWithImpl<$Res, _$_AuthorModel>
    implements _$$_AuthorModelCopyWith<$Res> {
  __$$_AuthorModelCopyWithImpl(
      _$_AuthorModel _value, $Res Function(_$_AuthorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AuthorModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorModel implements _AuthorModel {
  const _$_AuthorModel({required this.name});

  factory _$_AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthorModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorModelCopyWith<_$_AuthorModel> get copyWith =>
      __$$_AuthorModelCopyWithImpl<_$_AuthorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorModelToJson(
      this,
    );
  }
}

abstract class _AuthorModel implements AuthorModel {
  const factory _AuthorModel({required final String name}) = _$_AuthorModel;

  factory _AuthorModel.fromJson(Map<String, dynamic> json) =
      _$_AuthorModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorModelCopyWith<_$_AuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
