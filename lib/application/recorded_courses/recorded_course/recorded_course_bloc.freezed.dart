// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recorded_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordedCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateButtonPressed value) createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateButtonPressed value)? createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordedCourseEventCopyWith<$Res> {
  factory $RecordedCourseEventCopyWith(
          RecordedCourseEvent value, $Res Function(RecordedCourseEvent) then) =
      _$RecordedCourseEventCopyWithImpl<$Res, RecordedCourseEvent>;
}

/// @nodoc
class _$RecordedCourseEventCopyWithImpl<$Res, $Val extends RecordedCourseEvent>
    implements $RecordedCourseEventCopyWith<$Res> {
  _$RecordedCourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateButtonPressedImplCopyWith<$Res> {
  factory _$$CreateButtonPressedImplCopyWith(_$CreateButtonPressedImpl value,
          $Res Function(_$CreateButtonPressedImpl) then) =
      __$$CreateButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateButtonPressedImplCopyWithImpl<$Res>
    extends _$RecordedCourseEventCopyWithImpl<$Res, _$CreateButtonPressedImpl>
    implements _$$CreateButtonPressedImplCopyWith<$Res> {
  __$$CreateButtonPressedImplCopyWithImpl(_$CreateButtonPressedImpl _value,
      $Res Function(_$CreateButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateButtonPressedImpl implements CreateButtonPressed {
  const _$CreateButtonPressedImpl();

  @override
  String toString() {
    return 'RecordedCourseEvent.createButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createButtonPressed,
  }) {
    return createButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
  }) {
    return createButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateButtonPressed value) createButtonPressed,
  }) {
    return createButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateButtonPressed value)? createButtonPressed,
  }) {
    return createButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed(this);
    }
    return orElse();
  }
}

abstract class CreateButtonPressed implements RecordedCourseEvent {
  const factory CreateButtonPressed() = _$CreateButtonPressedImpl;
}

/// @nodoc
mixin _$RecordedCourseState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  CourseData get courseData => throw _privateConstructorUsedError;
  Option<Either<RecordedCourseFailures, Unit>>
      get recordedCoursesFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordedCourseStateCopyWith<RecordedCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordedCourseStateCopyWith<$Res> {
  factory $RecordedCourseStateCopyWith(
          RecordedCourseState value, $Res Function(RecordedCourseState) then) =
      _$RecordedCourseStateCopyWithImpl<$Res, RecordedCourseState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      CourseData courseData,
      Option<Either<RecordedCourseFailures, Unit>>
          recordedCoursesFailureOrSuccessOption});

  $CourseDataCopyWith<$Res> get courseData;
}

/// @nodoc
class _$RecordedCourseStateCopyWithImpl<$Res, $Val extends RecordedCourseState>
    implements $RecordedCourseStateCopyWith<$Res> {
  _$RecordedCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? courseData = null,
    Object? recordedCoursesFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $CourseDataCopyWith<$Res> get courseData {
    return $CourseDataCopyWith<$Res>(_value.courseData, (value) {
      return _then(_value.copyWith(courseData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordedCourseStateImplCopyWith<$Res>
    implements $RecordedCourseStateCopyWith<$Res> {
  factory _$$RecordedCourseStateImplCopyWith(_$RecordedCourseStateImpl value,
          $Res Function(_$RecordedCourseStateImpl) then) =
      __$$RecordedCourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      CourseData courseData,
      Option<Either<RecordedCourseFailures, Unit>>
          recordedCoursesFailureOrSuccessOption});

  @override
  $CourseDataCopyWith<$Res> get courseData;
}

/// @nodoc
class __$$RecordedCourseStateImplCopyWithImpl<$Res>
    extends _$RecordedCourseStateCopyWithImpl<$Res, _$RecordedCourseStateImpl>
    implements _$$RecordedCourseStateImplCopyWith<$Res> {
  __$$RecordedCourseStateImplCopyWithImpl(_$RecordedCourseStateImpl _value,
      $Res Function(_$RecordedCourseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? courseData = null,
    Object? recordedCoursesFailureOrSuccessOption = null,
  }) {
    return _then(_$RecordedCourseStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$RecordedCourseStateImpl implements _RecordedCourseState {
  const _$RecordedCourseStateImpl(
      {required this.isSubmitting,
      required this.courseData,
      required this.recordedCoursesFailureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final CourseData courseData;
  @override
  final Option<Either<RecordedCourseFailures, Unit>>
      recordedCoursesFailureOrSuccessOption;

  @override
  String toString() {
    return 'RecordedCourseState(isSubmitting: $isSubmitting, courseData: $courseData, recordedCoursesFailureOrSuccessOption: $recordedCoursesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordedCourseStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.courseData, courseData) ||
                other.courseData == courseData) &&
            (identical(other.recordedCoursesFailureOrSuccessOption,
                    recordedCoursesFailureOrSuccessOption) ||
                other.recordedCoursesFailureOrSuccessOption ==
                    recordedCoursesFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, courseData,
      recordedCoursesFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordedCourseStateImplCopyWith<_$RecordedCourseStateImpl> get copyWith =>
      __$$RecordedCourseStateImplCopyWithImpl<_$RecordedCourseStateImpl>(
          this, _$identity);
}

abstract class _RecordedCourseState implements RecordedCourseState {
  const factory _RecordedCourseState(
      {required final bool isSubmitting,
      required final CourseData courseData,
      required final Option<Either<RecordedCourseFailures, Unit>>
          recordedCoursesFailureOrSuccessOption}) = _$RecordedCourseStateImpl;

  @override
  bool get isSubmitting;
  @override
  CourseData get courseData;
  @override
  Option<Either<RecordedCourseFailures, Unit>>
      get recordedCoursesFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$RecordedCourseStateImplCopyWith<_$RecordedCourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
