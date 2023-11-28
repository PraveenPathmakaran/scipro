// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recorded_course_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordedCourseFailures<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) categoryCreationfailed,
    required TResult Function(T failedValue) categoryExistFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? categoryCreationfailed,
    TResult? Function(T failedValue)? categoryExistFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? categoryCreationfailed,
    TResult Function(T failedValue)? categoryExistFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(CategoryCreationfailed<T> value)
        categoryCreationfailed,
    required TResult Function(CategoryExistFailure<T> value)
        categoryExistFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult? Function(CategoryExistFailure<T> value)? categoryExistFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult Function(CategoryExistFailure<T> value)? categoryExistFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordedCourseFailuresCopyWith<T, RecordedCourseFailures<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordedCourseFailuresCopyWith<T, $Res> {
  factory $RecordedCourseFailuresCopyWith(RecordedCourseFailures<T> value,
          $Res Function(RecordedCourseFailures<T>) then) =
      _$RecordedCourseFailuresCopyWithImpl<T, $Res, RecordedCourseFailures<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$RecordedCourseFailuresCopyWithImpl<T, $Res,
        $Val extends RecordedCourseFailures<T>>
    implements $RecordedCourseFailuresCopyWith<T, $Res> {
  _$RecordedCourseFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<T, $Res>
    implements $RecordedCourseFailuresCopyWith<T, $Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl<T> value, $Res Function(_$UnexpectedImpl<T>) then) =
      __$$UnexpectedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<T, $Res>
    extends _$RecordedCourseFailuresCopyWithImpl<T, $Res, _$UnexpectedImpl<T>>
    implements _$$UnexpectedImplCopyWith<T, $Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl<T> _value, $Res Function(_$UnexpectedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$UnexpectedImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UnexpectedImpl<T> implements Unexpected<T> {
  const _$UnexpectedImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'RecordedCourseFailures<$T>.unexpected(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedImplCopyWith<T, _$UnexpectedImpl<T>> get copyWith =>
      __$$UnexpectedImplCopyWithImpl<T, _$UnexpectedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) categoryCreationfailed,
    required TResult Function(T failedValue) categoryExistFailure,
  }) {
    return unexpected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? categoryCreationfailed,
    TResult? Function(T failedValue)? categoryExistFailure,
  }) {
    return unexpected?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? categoryCreationfailed,
    TResult Function(T failedValue)? categoryExistFailure,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(CategoryCreationfailed<T> value)
        categoryCreationfailed,
    required TResult Function(CategoryExistFailure<T> value)
        categoryExistFailure,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult? Function(CategoryExistFailure<T> value)? categoryExistFailure,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult Function(CategoryExistFailure<T> value)? categoryExistFailure,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected<T> implements RecordedCourseFailures<T> {
  const factory Unexpected({required final T failedValue}) =
      _$UnexpectedImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedImplCopyWith<T, _$UnexpectedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryCreationfailedImplCopyWith<T, $Res>
    implements $RecordedCourseFailuresCopyWith<T, $Res> {
  factory _$$CategoryCreationfailedImplCopyWith(
          _$CategoryCreationfailedImpl<T> value,
          $Res Function(_$CategoryCreationfailedImpl<T>) then) =
      __$$CategoryCreationfailedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$CategoryCreationfailedImplCopyWithImpl<T, $Res>
    extends _$RecordedCourseFailuresCopyWithImpl<T, $Res,
        _$CategoryCreationfailedImpl<T>>
    implements _$$CategoryCreationfailedImplCopyWith<T, $Res> {
  __$$CategoryCreationfailedImplCopyWithImpl(
      _$CategoryCreationfailedImpl<T> _value,
      $Res Function(_$CategoryCreationfailedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$CategoryCreationfailedImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CategoryCreationfailedImpl<T> implements CategoryCreationfailed<T> {
  const _$CategoryCreationfailedImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'RecordedCourseFailures<$T>.categoryCreationfailed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCreationfailedImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCreationfailedImplCopyWith<T, _$CategoryCreationfailedImpl<T>>
      get copyWith => __$$CategoryCreationfailedImplCopyWithImpl<T,
          _$CategoryCreationfailedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) categoryCreationfailed,
    required TResult Function(T failedValue) categoryExistFailure,
  }) {
    return categoryCreationfailed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? categoryCreationfailed,
    TResult? Function(T failedValue)? categoryExistFailure,
  }) {
    return categoryCreationfailed?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? categoryCreationfailed,
    TResult Function(T failedValue)? categoryExistFailure,
    required TResult orElse(),
  }) {
    if (categoryCreationfailed != null) {
      return categoryCreationfailed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(CategoryCreationfailed<T> value)
        categoryCreationfailed,
    required TResult Function(CategoryExistFailure<T> value)
        categoryExistFailure,
  }) {
    return categoryCreationfailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult? Function(CategoryExistFailure<T> value)? categoryExistFailure,
  }) {
    return categoryCreationfailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult Function(CategoryExistFailure<T> value)? categoryExistFailure,
    required TResult orElse(),
  }) {
    if (categoryCreationfailed != null) {
      return categoryCreationfailed(this);
    }
    return orElse();
  }
}

abstract class CategoryCreationfailed<T> implements RecordedCourseFailures<T> {
  const factory CategoryCreationfailed({required final T failedValue}) =
      _$CategoryCreationfailedImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$CategoryCreationfailedImplCopyWith<T, _$CategoryCreationfailedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryExistFailureImplCopyWith<T, $Res>
    implements $RecordedCourseFailuresCopyWith<T, $Res> {
  factory _$$CategoryExistFailureImplCopyWith(
          _$CategoryExistFailureImpl<T> value,
          $Res Function(_$CategoryExistFailureImpl<T>) then) =
      __$$CategoryExistFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$CategoryExistFailureImplCopyWithImpl<T, $Res>
    extends _$RecordedCourseFailuresCopyWithImpl<T, $Res,
        _$CategoryExistFailureImpl<T>>
    implements _$$CategoryExistFailureImplCopyWith<T, $Res> {
  __$$CategoryExistFailureImplCopyWithImpl(_$CategoryExistFailureImpl<T> _value,
      $Res Function(_$CategoryExistFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$CategoryExistFailureImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CategoryExistFailureImpl<T> implements CategoryExistFailure<T> {
  const _$CategoryExistFailureImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'RecordedCourseFailures<$T>.categoryExistFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryExistFailureImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryExistFailureImplCopyWith<T, _$CategoryExistFailureImpl<T>>
      get copyWith => __$$CategoryExistFailureImplCopyWithImpl<T,
          _$CategoryExistFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) categoryCreationfailed,
    required TResult Function(T failedValue) categoryExistFailure,
  }) {
    return categoryExistFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? categoryCreationfailed,
    TResult? Function(T failedValue)? categoryExistFailure,
  }) {
    return categoryExistFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? categoryCreationfailed,
    TResult Function(T failedValue)? categoryExistFailure,
    required TResult orElse(),
  }) {
    if (categoryExistFailure != null) {
      return categoryExistFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(CategoryCreationfailed<T> value)
        categoryCreationfailed,
    required TResult Function(CategoryExistFailure<T> value)
        categoryExistFailure,
  }) {
    return categoryExistFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult? Function(CategoryExistFailure<T> value)? categoryExistFailure,
  }) {
    return categoryExistFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(CategoryCreationfailed<T> value)? categoryCreationfailed,
    TResult Function(CategoryExistFailure<T> value)? categoryExistFailure,
    required TResult orElse(),
  }) {
    if (categoryExistFailure != null) {
      return categoryExistFailure(this);
    }
    return orElse();
  }
}

abstract class CategoryExistFailure<T> implements RecordedCourseFailures<T> {
  const factory CategoryExistFailure({required final T failedValue}) =
      _$CategoryExistFailureImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$CategoryExistFailureImplCopyWith<T, _$CategoryExistFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
