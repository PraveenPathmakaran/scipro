// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseCategory {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  CourseCategoryName get categoryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCategoryCopyWith<CourseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryCopyWith<$Res> {
  factory $CourseCategoryCopyWith(
          CourseCategory value, $Res Function(CourseCategory) then) =
      _$CourseCategoryCopyWithImpl<$Res, CourseCategory>;
  @useResult
  $Res call({UniqueId uniqueId, CourseCategoryName categoryName});
}

/// @nodoc
class _$CourseCategoryCopyWithImpl<$Res, $Val extends CourseCategory>
    implements $CourseCategoryCopyWith<$Res> {
  _$CourseCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as CourseCategoryName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCategoryImplCopyWith<$Res>
    implements $CourseCategoryCopyWith<$Res> {
  factory _$$CourseCategoryImplCopyWith(_$CourseCategoryImpl value,
          $Res Function(_$CourseCategoryImpl) then) =
      __$$CourseCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId uniqueId, CourseCategoryName categoryName});
}

/// @nodoc
class __$$CourseCategoryImplCopyWithImpl<$Res>
    extends _$CourseCategoryCopyWithImpl<$Res, _$CourseCategoryImpl>
    implements _$$CourseCategoryImplCopyWith<$Res> {
  __$$CourseCategoryImplCopyWithImpl(
      _$CourseCategoryImpl _value, $Res Function(_$CourseCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? categoryName = null,
  }) {
    return _then(_$CourseCategoryImpl(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as CourseCategoryName,
    ));
  }
}

/// @nodoc

class _$CourseCategoryImpl extends _CourseCategory {
  const _$CourseCategoryImpl(
      {required this.uniqueId, required this.categoryName})
      : super._();

  @override
  final UniqueId uniqueId;
  @override
  final CourseCategoryName categoryName;

  @override
  String toString() {
    return 'CourseCategory(uniqueId: $uniqueId, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCategoryImpl &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uniqueId, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCategoryImplCopyWith<_$CourseCategoryImpl> get copyWith =>
      __$$CourseCategoryImplCopyWithImpl<_$CourseCategoryImpl>(
          this, _$identity);
}

abstract class _CourseCategory extends CourseCategory {
  const factory _CourseCategory(
      {required final UniqueId uniqueId,
      required final CourseCategoryName categoryName}) = _$CourseCategoryImpl;
  const _CourseCategory._() : super._();

  @override
  UniqueId get uniqueId;
  @override
  CourseCategoryName get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$CourseCategoryImplCopyWith<_$CourseCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
