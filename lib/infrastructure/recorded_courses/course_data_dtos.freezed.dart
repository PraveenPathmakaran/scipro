// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_data_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDataDtos _$CourseDataDtosFromJson(Map<String, dynamic> json) {
  return _CourseDataDtos.fromJson(json);
}

/// @nodoc
mixin _$CourseDataDtos {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get courseName => throw _privateConstructorUsedError;
  String get facultyName => throw _privateConstructorUsedError;
  num get courseFee => throw _privateConstructorUsedError;
  num get courseDuraion => throw _privateConstructorUsedError;
  @SeverTimeStampConvertor()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDataDtosCopyWith<CourseDataDtos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataDtosCopyWith<$Res> {
  factory $CourseDataDtosCopyWith(
          CourseDataDtos value, $Res Function(CourseDataDtos) then) =
      _$CourseDataDtosCopyWithImpl<$Res, CourseDataDtos>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      String courseName,
      String facultyName,
      num courseFee,
      num courseDuraion,
      @SeverTimeStampConvertor() FieldValue serverTimeStamp});
}

/// @nodoc
class _$CourseDataDtosCopyWithImpl<$Res, $Val extends CourseDataDtos>
    implements $CourseDataDtosCopyWith<$Res> {
  _$CourseDataDtosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseName = null,
    Object? facultyName = null,
    Object? courseFee = null,
    Object? courseDuraion = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      facultyName: null == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String,
      courseFee: null == courseFee
          ? _value.courseFee
          : courseFee // ignore: cast_nullable_to_non_nullable
              as num,
      courseDuraion: null == courseDuraion
          ? _value.courseDuraion
          : courseDuraion // ignore: cast_nullable_to_non_nullable
              as num,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseDataDtosImplCopyWith<$Res>
    implements $CourseDataDtosCopyWith<$Res> {
  factory _$$CourseDataDtosImplCopyWith(_$CourseDataDtosImpl value,
          $Res Function(_$CourseDataDtosImpl) then) =
      __$$CourseDataDtosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String id,
      String courseName,
      String facultyName,
      num courseFee,
      num courseDuraion,
      @SeverTimeStampConvertor() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$CourseDataDtosImplCopyWithImpl<$Res>
    extends _$CourseDataDtosCopyWithImpl<$Res, _$CourseDataDtosImpl>
    implements _$$CourseDataDtosImplCopyWith<$Res> {
  __$$CourseDataDtosImplCopyWithImpl(
      _$CourseDataDtosImpl _value, $Res Function(_$CourseDataDtosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseName = null,
    Object? facultyName = null,
    Object? courseFee = null,
    Object? courseDuraion = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$CourseDataDtosImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      facultyName: null == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String,
      courseFee: null == courseFee
          ? _value.courseFee
          : courseFee // ignore: cast_nullable_to_non_nullable
              as num,
      courseDuraion: null == courseDuraion
          ? _value.courseDuraion
          : courseDuraion // ignore: cast_nullable_to_non_nullable
              as num,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseDataDtosImpl extends _CourseDataDtos {
  const _$CourseDataDtosImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id = '',
      required this.courseName,
      required this.facultyName,
      required this.courseFee,
      required this.courseDuraion,
      @SeverTimeStampConvertor() required this.serverTimeStamp})
      : super._();

  factory _$CourseDataDtosImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDataDtosImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String id;
  @override
  final String courseName;
  @override
  final String facultyName;
  @override
  final num courseFee;
  @override
  final num courseDuraion;
  @override
  @SeverTimeStampConvertor()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'CourseDataDtos(id: $id, courseName: $courseName, facultyName: $facultyName, courseFee: $courseFee, courseDuraion: $courseDuraion, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDataDtosImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.facultyName, facultyName) ||
                other.facultyName == facultyName) &&
            (identical(other.courseFee, courseFee) ||
                other.courseFee == courseFee) &&
            (identical(other.courseDuraion, courseDuraion) ||
                other.courseDuraion == courseDuraion) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseName, facultyName,
      courseFee, courseDuraion, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDataDtosImplCopyWith<_$CourseDataDtosImpl> get copyWith =>
      __$$CourseDataDtosImplCopyWithImpl<_$CourseDataDtosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDataDtosImplToJson(
      this,
    );
  }
}

abstract class _CourseDataDtos extends CourseDataDtos {
  const factory _CourseDataDtos(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String id,
      required final String courseName,
      required final String facultyName,
      required final num courseFee,
      required final num courseDuraion,
      @SeverTimeStampConvertor()
      required final FieldValue serverTimeStamp}) = _$CourseDataDtosImpl;
  const _CourseDataDtos._() : super._();

  factory _CourseDataDtos.fromJson(Map<String, dynamic> json) =
      _$CourseDataDtosImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get id;
  @override
  String get courseName;
  @override
  String get facultyName;
  @override
  num get courseFee;
  @override
  num get courseDuraion;
  @override
  @SeverTimeStampConvertor()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$CourseDataDtosImplCopyWith<_$CourseDataDtosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
