// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recorded_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordedCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCategoryButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCategoryButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCategoryButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCategoryButtonPressed value)
        createCategoryButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryButtonPressed value)?
        createCategoryButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCategoryButtonPressed value)?
        createCategoryButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordedCoursesEventCopyWith<$Res> {
  factory $RecordedCoursesEventCopyWith(RecordedCoursesEvent value,
          $Res Function(RecordedCoursesEvent) then) =
      _$RecordedCoursesEventCopyWithImpl<$Res, RecordedCoursesEvent>;
}

/// @nodoc
class _$RecordedCoursesEventCopyWithImpl<$Res,
        $Val extends RecordedCoursesEvent>
    implements $RecordedCoursesEventCopyWith<$Res> {
  _$RecordedCoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateCategoryButtonPressedImplCopyWith<$Res> {
  factory _$$CreateCategoryButtonPressedImplCopyWith(
          _$CreateCategoryButtonPressedImpl value,
          $Res Function(_$CreateCategoryButtonPressedImpl) then) =
      __$$CreateCategoryButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCategoryButtonPressedImplCopyWithImpl<$Res>
    extends _$RecordedCoursesEventCopyWithImpl<$Res,
        _$CreateCategoryButtonPressedImpl>
    implements _$$CreateCategoryButtonPressedImplCopyWith<$Res> {
  __$$CreateCategoryButtonPressedImplCopyWithImpl(
      _$CreateCategoryButtonPressedImpl _value,
      $Res Function(_$CreateCategoryButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateCategoryButtonPressedImpl implements CreateCategoryButtonPressed {
  const _$CreateCategoryButtonPressedImpl();

  @override
  String toString() {
    return 'RecordedCoursesEvent.createCategoryButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCategoryButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCategoryButtonPressed,
  }) {
    return createCategoryButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCategoryButtonPressed,
  }) {
    return createCategoryButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCategoryButtonPressed,
    required TResult orElse(),
  }) {
    if (createCategoryButtonPressed != null) {
      return createCategoryButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCategoryButtonPressed value)
        createCategoryButtonPressed,
  }) {
    return createCategoryButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryButtonPressed value)?
        createCategoryButtonPressed,
  }) {
    return createCategoryButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCategoryButtonPressed value)?
        createCategoryButtonPressed,
    required TResult orElse(),
  }) {
    if (createCategoryButtonPressed != null) {
      return createCategoryButtonPressed(this);
    }
    return orElse();
  }
}

abstract class CreateCategoryButtonPressed implements RecordedCoursesEvent {
  const factory CreateCategoryButtonPressed() =
      _$CreateCategoryButtonPressedImpl;
}

/// @nodoc
mixin _$RecordedCoursesState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  CourseCategory get courseCategory => throw _privateConstructorUsedError;
  CourseData get courseData => throw _privateConstructorUsedError;
  Option<Either<RecordedCourseFailures, Unit>>
      get recordedCoursesFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordedCoursesStateCopyWith<RecordedCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordedCoursesStateCopyWith<$Res> {
  factory $RecordedCoursesStateCopyWith(RecordedCoursesState value,
          $Res Function(RecordedCoursesState) then) =
      _$RecordedCoursesStateCopyWithImpl<$Res, RecordedCoursesState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      CourseCategory courseCategory,
      CourseData courseData,
      Option<Either<RecordedCourseFailures, Unit>>
          recordedCoursesFailureOrSuccessOption});

  $CourseCategoryCopyWith<$Res> get courseCategory;
  $CourseDataCopyWith<$Res> get courseData;
}

/// @nodoc
class _$RecordedCoursesStateCopyWithImpl<$Res,
        $Val extends RecordedCoursesState>
    implements $RecordedCoursesStateCopyWith<$Res> {
  _$RecordedCoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? courseCategory = null,
    Object? courseData = null,
    Object? recordedCoursesFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      courseCategory: null == courseCategory
          ? _value.courseCategory
          : courseCategory // ignore: cast_nullable_to_non_nullable
              as CourseCategory,
      courseData: null == courseData
          ? _value.courseData
          : courseData // ignore: cast_nullable_to_non_nullable
              as CourseData,
      recordedCoursesFailureOrSuccessOption: null ==
              recordedCoursesFailureOrSuccessOption
          ? _value.recordedCoursesFailureOrSuccessOption
          : recordedCoursesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RecordedCourseFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCategoryCopyWith<$Res> get courseCategory {
    return $CourseCategoryCopyWith<$Res>(_value.courseCategory, (value) {
      return _then(_value.copyWith(courseCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseDataCopyWith<$Res> get courseData {
    return $CourseDataCopyWith<$Res>(_value.courseData, (value) {
      return _then(_value.copyWith(courseData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordedCoursesStateImplCopyWith<$Res>
    implements $RecordedCoursesStateCopyWith<$Res> {
  factory _$$RecordedCoursesStateImplCopyWith(_$RecordedCoursesStateImpl value,
          $Res Function(_$RecordedCoursesStateImpl) then) =
      __$$RecordedCoursesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      CourseCategory courseCategory,
      CourseData courseData,
      Option<Either<RecordedCourseFailures, Unit>>
          recordedCoursesFailureOrSuccessOption});

  @override
  $CourseCategoryCopyWith<$Res> get courseCategory;
  @override
  $CourseDataCopyWith<$Res> get courseData;
}

/// @nodoc
class __$$RecordedCoursesStateImplCopyWithImpl<$Res>
    extends _$RecordedCoursesStateCopyWithImpl<$Res, _$RecordedCoursesStateImpl>
    implements _$$RecordedCoursesStateImplCopyWith<$Res> {
  __$$RecordedCoursesStateImplCopyWithImpl(_$RecordedCoursesStateImpl _value,
      $Res Function(_$RecordedCoursesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? courseCategory = null,
    Object? courseData = null,
    Object? recordedCoursesFailureOrSuccessOption = null,
  }) {
    return _then(_$RecordedCoursesStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      courseCategory: null == courseCategory
          ? _value.courseCategory
          : courseCategory // ignore: cast_nullable_to_non_nullable
              as CourseCategory,
      courseData: null == courseData
          ? _value.courseData
          : courseData // ignore: cast_nullable_to_non_nullable
              as CourseData,
      recordedCoursesFailureOrSuccessOption: null ==
              recordedCoursesFailureOrSuccessOption
          ? _value.recordedCoursesFailureOrSuccessOption
          : recordedCoursesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RecordedCourseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$RecordedCoursesStateImpl implements _RecordedCoursesState {
  const _$RecordedCoursesStateImpl(
      {required this.isSubmitting,
      required this.courseCategory,
      required this.courseData,
      required this.recordedCoursesFailureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final CourseCategory courseCategory;
  @override
  final CourseData courseData;
  @override
  final Option<Either<RecordedCourseFailures, Unit>>
      recordedCoursesFailureOrSuccessOption;

  @override
  String toString() {
    return 'RecordedCoursesState(isSubmitting: $isSubmitting, courseCategory: $courseCategory, courseData: $courseData, recordedCoursesFailureOrSuccessOption: $recordedCoursesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordedCoursesStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.courseCategory, courseCategory) ||
                other.courseCategory == courseCategory) &&
            (identical(other.courseData, courseData) ||
                other.courseData == courseData) &&
            (identical(other.recordedCoursesFailureOrSuccessOption,
                    recordedCoursesFailureOrSuccessOption) ||
                other.recordedCoursesFailureOrSuccessOption ==
                    recordedCoursesFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, courseCategory,
      courseData, recordedCoursesFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordedCoursesStateImplCopyWith<_$RecordedCoursesStateImpl>
      get copyWith =>
          __$$RecordedCoursesStateImplCopyWithImpl<_$RecordedCoursesStateImpl>(
              this, _$identity);
}

abstract class _RecordedCoursesState implements RecordedCoursesState {
  const factory _RecordedCoursesState(
      {required final bool isSubmitting,
      required final CourseCategory courseCategory,
      required final CourseData courseData,
      required final Option<Either<RecordedCourseFailures, Unit>>
          recordedCoursesFailureOrSuccessOption}) = _$RecordedCoursesStateImpl;

  @override
  bool get isSubmitting;
  @override
  CourseCategory get courseCategory;
  @override
  CourseData get courseData;
  @override
  Option<Either<RecordedCourseFailures, Unit>>
      get recordedCoursesFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$RecordedCoursesStateImplCopyWith<_$RecordedCoursesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
