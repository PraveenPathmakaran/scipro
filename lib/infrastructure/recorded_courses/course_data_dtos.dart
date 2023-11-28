// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/core/value_objects.dart';
import 'package:scipro/domain/recorded_courses/course_data.dart';
import 'package:scipro/domain/recorded_courses/value_objects.dart';

part 'course_data_dtos.freezed.dart';
part 'course_data_dtos.g.dart';

@JsonSerializable()
class SeverTimeStampConvertor implements JsonConverter<FieldValue, Object> {
  const SeverTimeStampConvertor();
  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue value) {
    return value;
  }
}

@freezed
abstract class CourseDataDtos implements _$CourseDataDtos {
  const CourseDataDtos._();
  const factory CourseDataDtos({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default('')
    String id,
    required String courseName,
    required String facultyName,
    required num courseFee,
    required num courseDuraion,
    @SeverTimeStampConvertor() required FieldValue serverTimeStamp,
  }) = _CourseDataDtos;

  factory CourseDataDtos.fromDomain(CourseData courseData) {
    return CourseDataDtos(
        courseName: courseData.courseName.getOrCrash(),
        facultyName: courseData.facultyName.getOrCrash(),
        courseFee: num.parse(courseData.fee.getOrCrash()),
        courseDuraion: num.parse(courseData.duration.getOrCrash()),
        serverTimeStamp: FieldValue.serverTimestamp());
  }

  CourseData toDomain() {
    return CourseData(
        uniqueId: UniqueId.fromUniqueString(id),
        courseName: CourseName(courseName),
        facultyName: FacultyName(facultyName),
        fee: CourseFee(courseFee.toString()),
        duration: CourseDuraion(courseDuraion.toString()));
  }

  factory CourseDataDtos.fromJson(Map<String, dynamic> json) =>
      _$CourseDataDtosFromJson(json);

  // factory CourseDataDtos.fromFirestore(
  //     DocumentSnapshot<Map<String, dynamic>> doc) {
  //   return CourseDataDtos.fromJson(doc.data() ?? {}).copyWith(
  //     id: doc.data(),
  //   );
  // }
}
