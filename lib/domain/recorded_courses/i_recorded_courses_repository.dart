import 'package:dartz/dartz.dart';
import 'package:scipro/domain/recorded_courses/course_category.dart';

import 'recorded_course_failures.dart';

abstract class IRecordedCoursesRepository {
  // Future<Either<RecordedCourseFailures, Unit>> createCourse({
  //   required CourseData courseData,
  // });
  Future<Either<RecordedCourseFailures, Unit>> createCategory({
    required CourseCategory courseCategory,
  });
  Future<Either<RecordedCourseFailures, Unit>> updateCategoryName({
    required CourseCategory courseCategory,
  });

  Future<Either<RecordedCourseFailures, List<CourseCategory>>>
      fetchAllCategory();
  Future<Either<RecordedCourseFailures, Unit>> isCategoryExist(String docId);
}
