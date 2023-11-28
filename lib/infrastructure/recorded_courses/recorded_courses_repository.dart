import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:scipro/domain/recorded_courses/course_category.dart';
import 'package:scipro/domain/recorded_courses/i_recorded_courses_repository.dart';
import 'package:scipro/domain/recorded_courses/recorded_course_failures.dart';
import 'package:scipro/infrastructure/core/firestore_helpers.dart';
import 'package:scipro/infrastructure/recorded_courses/course_category_dtos.dart';

class RecordedCoursesRepository implements IRecordedCoursesRepository {
  final FirebaseFirestore _firestore;

  RecordedCoursesRepository(this._firestore);

  @override
  Future<Either<RecordedCourseFailures, List<CourseCategory>>>
      fetchAllCategory() async {
    try {
      final recordedCourseCollection =
          await _firestore.recordedCourseDocument();
      final recordedCourses = await recordedCourseCollection.get();
      final List<CourseCategory> allRecordedCourses = recordedCourses.docs
          .map((e) => CourseCategoryDto.fromFirestore(e).toDomain())
          .toList();
      return right(allRecordedCourses);
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCoursesRepository - fetchAllCategory');
      return left(RecordedCourseFailures.unexpected(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<RecordedCourseFailures, Unit>> createCategory(
      {required CourseCategory courseCategory}) async {
    try {
      final courseCategoryDto = CourseCategoryDto.fromDomain(courseCategory);
      final recordedCourseCollection =
          await _firestore.recordedCourseDocument();
      await recordedCourseCollection
          .doc(courseCategoryDto.id)
          .set(courseCategoryDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCoursesRepository - createCategory');
      return left(RecordedCourseFailures.unexpected(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<RecordedCourseFailures, Unit>> isCategoryExist(
    String categoryName,
  ) async {
    try {
      final recordedCourseCollection =
          await _firestore.recordedCourseDocument();
      final isDocExist = await recordedCourseCollection
          .where(
            'categoryName',
            isEqualTo: categoryName.toLowerCase(),
          )
          .get();
      if (isDocExist.docs.isNotEmpty) {
        return left(const RecordedCourseFailures.categoryExistFailure(
            failedValue: 'Category Exist'));
      } else {
        return right(unit);
      }
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCoursesRepository - isCategoryExist');
      return left(RecordedCourseFailures.unexpected(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<RecordedCourseFailures, Unit>> updateCategoryName({
    required CourseCategory courseCategory,
  }) async {
    try {
      final recordedCourseCollection =
          await _firestore.recordedCourseDocument();
      final courseCategoryDto = CourseCategoryDto.fromDomain(courseCategory);
      await recordedCourseCollection
          .doc(courseCategoryDto.id)
          .update(courseCategoryDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCoursesRepository - isCategoryExist');
      return left(RecordedCourseFailures.unexpected(failedValue: e.toString()));
    }
  }
}
