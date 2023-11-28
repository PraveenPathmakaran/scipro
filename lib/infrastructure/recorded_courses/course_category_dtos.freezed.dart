// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseCategoryDto _$CourseCategoryDtoFromJson(Map<String, dynamic> json) {
  return _CourseCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CourseCategoryDto {
  String get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  @SeverTimeStampConvertor()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCategoryDtoCopyWith<CourseCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryDtoCopyWith<$Res> {
  factory $CourseCategoryDtoCopyWith(
          CourseCategoryDto value, $Res Function(CourseCategoryDto) then) =
      _$CourseCategoryDtoCopyWithImpl<$Res, CourseCategoryDto>;
  @useResult
  $Res call(
      {String id,
      String categoryName,
      @SeverTimeStampConvertor() FieldValue serverTimeStamp});
}

/// @nodoc
class _$CourseCategoryDtoCopyWithImpl<$Res, $Val extends CourseCategoryDto>
    implements $CourseCategoryDtoCopyWith<$Res> {
  _$CourseCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCategoryDtoImplCopyWith<$Res>
    implements $CourseCategoryDtoCopyWith<$Res> {
  factory _$$CourseCategoryDtoImplCopyWith(_$CourseCategoryDtoImpl value,
          $Res Function(_$CourseCategoryDtoImpl) then) =
      __$$CourseCategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryName,
      @SeverTimeStampConvertor() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$CourseCategoryDtoImplCopyWithImpl<$Res>
    extends _$CourseCategoryDtoCopyWithImpl<$Res, _$CourseCategoryDtoImpl>
    implements _$$CourseCategoryDtoImplCopyWith<$Res> {
  __$$CourseCategoryDtoImplCopyWithImpl(_$CourseCategoryDtoImpl _value,
      $Res Function(_$CourseCategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$CourseCategoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseCategoryDtoImpl extends _CourseCategoryDto {
  const _$CourseCategoryDtoImpl(
      {required this.id,
      required this.categoryName,
      @SeverTimeStampConvertor() required this.serverTimeStamp})
      : super._();

  factory _$CourseCategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseCategoryDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String categoryName;
  @override
  @SeverTimeStampConvertor()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'CourseCategoryDto(id: $id, categoryName: $categoryName, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, categoryName, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCategoryDtoImplCopyWith<_$CourseCategoryDtoImpl> get copyWith =>
      __$$CourseCategoryDtoImplCopyWithImpl<_$CourseCategoryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseCategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _CourseCategoryDto extends CourseCategoryDto {
  const factory _CourseCategoryDto(
      {required final String id,
      required final String categoryName,
      @SeverTimeStampConvertor()
      required final FieldValue serverTimeStamp}) = _$CourseCategoryDtoImpl;
  const _CourseCategoryDto._() : super._();

  factory _CourseCategoryDto.fromJson(Map<String, dynamic> json) =
      _$CourseCategoryDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get categoryName;
  @override
  @SeverTimeStampConvertor()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$CourseCategoryDtoImplCopyWith<_$CourseCategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
