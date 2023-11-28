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
    required String id,
    required String courseName,
    required String facultyName,
    required String categoryId,
    required num courseFee,
    required num courseDuraion,
    required List<String> videoUrls,
    required List<String> subscribedStudents,
    @SeverTimeStampConvertor() required FieldValue serverTimeStamp,
  }) = _CourseDataDtos;

  factory CourseDataDtos.fromDomain(CourseData courseData) {
    return CourseDataDtos(
      courseName: courseData.courseName.getOrCrash(),
      facultyName: courseData.facultyName.getOrCrash(),
      courseFee: num.parse(courseData.fee.getOrCrash()),
      courseDuraion: num.parse(courseData.duration.getOrCrash()),
      serverTimeStamp: FieldValue.serverTimestamp(),
      categoryId: courseData.categoryId.getOrCrash(),
      videoUrls: courseData.videos.map((e) => e.getOrCrash()).toList(),
      subscribedStudents:
          courseData.subscribedStudents.map((e) => e.getOrCrash()).toList(),
      id: courseData.uniqueId.getOrCrash(),
    );
  }

  CourseData toDomain() {
    return CourseData(
        uniqueId: UniqueId.fromUniqueString(id),
        courseName: CourseName(courseName),
        facultyName: FacultyName(facultyName),
        fee: CourseFee(courseFee.toString()),
        duration: CourseDuraion(courseDuraion.toString()),
        categoryId: UniqueId.fromUniqueString(categoryId),
        videos: videoUrls.map((e) => CourseVideoUrl(e)).toList(),
        subscribedStudents:
            subscribedStudents.map((e) => StudentId(e)).toList());
  }

  factory CourseDataDtos.fromJson(Map<String, dynamic> json) =>
      _$CourseDataDtosFromJson(json);
   factory CourseDataDtos.fromFirestore(DocumentSnapshot doc) {
    return CourseDataDtos.fromJson(
        (doc.data() as Map<String, dynamic>?) ?? {});
  }
}
