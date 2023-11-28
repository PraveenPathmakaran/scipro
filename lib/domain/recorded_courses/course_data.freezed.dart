// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseData {
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  CourseName get courseName => throw _privateConstructorUsedError;
  FacultyName get facultyName => throw _privateConstructorUsedError;
  UniqueId get categoryId => throw _privateConstructorUsedError;
  CourseFee get fee => throw _privateConstructorUsedError;
  List<CourseVideoUrl> get videos => throw _privateConstructorUsedError;
  List<StudentId> get subscribedStudents => throw _privateConstructorUsedError;
  CourseDuraion get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseDataCopyWith<CourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataCopyWith<$Res> {
  factory $CourseDataCopyWith(
          CourseData value, $Res Function(CourseData) then) =
      _$CourseDataCopyWithImpl<$Res, CourseData>;
  @useResult
  $Res call(
      {UniqueId uniqueId,
      CourseName courseName,
      FacultyName facultyName,
      UniqueId categoryId,
      CourseFee fee,
      List<CourseVideoUrl> videos,
      List<StudentId> subscribedStudents,
      CourseDuraion duration});
}

/// @nodoc
class _$CourseDataCopyWithImpl<$Res, $Val extends CourseData>
    implements $CourseDataCopyWith<$Res> {
  _$CourseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? courseName = null,
    Object? facultyName = null,
    Object? categoryId = null,
    Object? fee = null,
    Object? videos = null,
    Object? subscribedStudents = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as CourseName,
      facultyName: null == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as FacultyName,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as CourseFee,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<CourseVideoUrl>,
      subscribedStudents: null == subscribedStudents
          ? _value.subscribedStudents
          : subscribedStudents // ignore: cast_nullable_to_non_nullable
              as List<StudentId>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as CourseDuraion,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseDataImplCopyWith<$Res>
    implements $CourseDataCopyWith<$Res> {
  factory _$$CourseDataImplCopyWith(
          _$CourseDataImpl value, $Res Function(_$CourseDataImpl) then) =
      __$$CourseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId uniqueId,
      CourseName courseName,
      FacultyName facultyName,
      UniqueId categoryId,
      CourseFee fee,
      List<CourseVideoUrl> videos,
      List<StudentId> subscribedStudents,
      CourseDuraion duration});
}

/// @nodoc
class __$$CourseDataImplCopyWithImpl<$Res>
    extends _$CourseDataCopyWithImpl<$Res, _$CourseDataImpl>
    implements _$$CourseDataImplCopyWith<$Res> {
  __$$CourseDataImplCopyWithImpl(
      _$CourseDataImpl _value, $Res Function(_$CourseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? courseName = null,
    Object? facultyName = null,
    Object? categoryId = null,
    Object? fee = null,
    Object? videos = null,
    Object? subscribedStudents = null,
    Object? duration = null,
  }) {
    return _then(_$CourseDataImpl(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as CourseName,
      facultyName: null == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as FacultyName,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as CourseFee,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<CourseVideoUrl>,
      subscribedStudents: null == subscribedStudents
          ? _value._subscribedStudents
          : subscribedStudents // ignore: cast_nullable_to_non_nullable
              as List<StudentId>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as CourseDuraion,
    ));
  }
}

/// @nodoc

class _$CourseDataImpl extends _CourseData {
  const _$CourseDataImpl(
      {required this.uniqueId,
      required this.courseName,
      required this.facultyName,
      required this.categoryId,
      required this.fee,
      required final List<CourseVideoUrl> videos,
      required final List<StudentId> subscribedStudents,
      required this.duration})
      : _videos = videos,
        _subscribedStudents = subscribedStudents,
        super._();

  @override
  final UniqueId uniqueId;
  @override
  final CourseName courseName;
  @override
  final FacultyName facultyName;
  @override
  final UniqueId categoryId;
  @override
  final CourseFee fee;
  final List<CourseVideoUrl> _videos;
  @override
  List<CourseVideoUrl> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  final List<StudentId> _subscribedStudents;
  @override
  List<StudentId> get subscribedStudents {
    if (_subscribedStudents is EqualUnmodifiableListView)
      return _subscribedStudents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribedStudents);
  }

  @override
  final CourseDuraion duration;

  @override
  String toString() {
    return 'CourseData(uniqueId: $uniqueId, courseName: $courseName, facultyName: $facultyName, categoryId: $categoryId, fee: $fee, videos: $videos, subscribedStudents: $subscribedStudents, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDataImpl &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.facultyName, facultyName) ||
                other.facultyName == facultyName) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._subscribedStudents, _subscribedStudents) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uniqueId,
      courseName,
      facultyName,
      categoryId,
      fee,
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_subscribedStudents),
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      __$$CourseDataImplCopyWithImpl<_$CourseDataImpl>(this, _$identity);
}

abstract class _CourseData extends CourseData {
  const factory _CourseData(
      {required final UniqueId uniqueId,
      required final CourseName courseName,
      required final FacultyName facultyName,
      required final UniqueId categoryId,
      required final CourseFee fee,
      required final List<CourseVideoUrl> videos,
      required final List<StudentId> subscribedStudents,
      required final CourseDuraion duration}) = _$CourseDataImpl;
  const _CourseData._() : super._();

  @override
  UniqueId get uniqueId;
  @override
  CourseName get courseName;
  @override
  FacultyName get facultyName;
  @override
  UniqueId get categoryId;
  @override
  CourseFee get fee;
  @override
  List<CourseVideoUrl> get videos;
  @override
  List<StudentId> get subscribedStudents;
  @override
  CourseDuraion get duration;
  @override
  @JsonKey(ignore: true)
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
