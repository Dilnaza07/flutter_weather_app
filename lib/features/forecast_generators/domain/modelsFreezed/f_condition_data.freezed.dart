// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'f_condition_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FConditionData {
  String? get text => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FConditionDataCopyWith<FConditionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FConditionDataCopyWith<$Res> {
  factory $FConditionDataCopyWith(
          FConditionData value, $Res Function(FConditionData) then) =
      _$FConditionDataCopyWithImpl<$Res, FConditionData>;
  @useResult
  $Res call({String? text, String? icon, int? code});
}

/// @nodoc
class _$FConditionDataCopyWithImpl<$Res, $Val extends FConditionData>
    implements $FConditionDataCopyWith<$Res> {
  _$FConditionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FConditionDataImplCopyWith<$Res>
    implements $FConditionDataCopyWith<$Res> {
  factory _$$FConditionDataImplCopyWith(_$FConditionDataImpl value,
          $Res Function(_$FConditionDataImpl) then) =
      __$$FConditionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? icon, int? code});
}

/// @nodoc
class __$$FConditionDataImplCopyWithImpl<$Res>
    extends _$FConditionDataCopyWithImpl<$Res, _$FConditionDataImpl>
    implements _$$FConditionDataImplCopyWith<$Res> {
  __$$FConditionDataImplCopyWithImpl(
      _$FConditionDataImpl _value, $Res Function(_$FConditionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_$FConditionDataImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FConditionDataImpl implements _FConditionData {
  _$FConditionDataImpl({this.text, this.icon, this.code});

  @override
  final String? text;
  @override
  final String? icon;
  @override
  final int? code;

  @override
  String toString() {
    return 'FConditionData(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FConditionDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FConditionDataImplCopyWith<_$FConditionDataImpl> get copyWith =>
      __$$FConditionDataImplCopyWithImpl<_$FConditionDataImpl>(
          this, _$identity);
}

abstract class _FConditionData implements FConditionData {
  factory _FConditionData(
      {final String? text,
      final String? icon,
      final int? code}) = _$FConditionDataImpl;

  @override
  String? get text;
  @override
  String? get icon;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$FConditionDataImplCopyWith<_$FConditionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
