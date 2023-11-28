// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/core/value_objects.dart';
import 'package:scipro/domain/recorded_courses/course_category.dart';
import 'package:scipro/domain/recorded_courses/value_objects.dart';

import 'course_data_dtos.dart';

part 'course_category_dtos.freezed.dart';
part 'course_category_dtos.g.dart';

@freezed
abstract class CourseCategoryDto implements _$CourseCategoryDto {
  const CourseCategoryDto._();
  const factory CourseCategoryDto({
    required String id,
    required String categoryName,
    @SeverTimeStampConvertor() required FieldValue serverTimeStamp,
  }) = _CourseCategoryDto;

  factory CourseCategoryDto.fromDomain(CourseCategory courseCategory) {
    return CourseCategoryDto(
      id: courseCategory.uniqueId.getOrCrash(),
      categoryName: courseCategory.categoryName.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  CourseCategory toDomain() {
    return CourseCategory(
      uniqueId: UniqueId.fromUniqueString(id),
      categoryName: CourseCategoryName(categoryName),
    );
  }

  factory CourseCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CourseCategoryDtoFromJson(json);

  factory CourseCategoryDto.fromFirestore(DocumentSnapshot doc) {
    return CourseCategoryDto.fromJson(
        (doc.data() as Map<String, dynamic>?) ?? {});
  }
}
