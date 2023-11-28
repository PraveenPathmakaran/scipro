// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_category_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseCategoryDtoImpl _$$CourseCategoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseCategoryDtoImpl(
      id: json['id'] as String,
      categoryName: json['categoryName'] as String,
      serverTimeStamp: const SeverTimeStampConvertor()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$CourseCategoryDtoImplToJson(
        _$CourseCategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'serverTimeStamp':
          const SeverTimeStampConvertor().toJson(instance.serverTimeStamp),
    };
