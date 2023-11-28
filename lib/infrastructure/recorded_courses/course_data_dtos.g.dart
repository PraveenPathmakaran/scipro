// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_data_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeverTimeStampConvertor _$SeverTimeStampConvertorFromJson(
        Map<String, dynamic> json) =>
    SeverTimeStampConvertor();

Map<String, dynamic> _$SeverTimeStampConvertorToJson(
        SeverTimeStampConvertor instance) =>
    <String, dynamic>{};

_$CourseDataDtosImpl _$$CourseDataDtosImplFromJson(Map<String, dynamic> json) =>
    _$CourseDataDtosImpl(
      id: json['id'] as String,
      courseName: json['courseName'] as String,
      facultyName: json['facultyName'] as String,
      categoryId: json['categoryId'] as String,
      courseFee: json['courseFee'] as num,
      courseDuraion: json['courseDuraion'] as num,
      videoUrls:
          (json['videoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      subscribedStudents: (json['subscribedStudents'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      serverTimeStamp: const SeverTimeStampConvertor()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$CourseDataDtosImplToJson(
        _$CourseDataDtosImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseName': instance.courseName,
      'facultyName': instance.facultyName,
      'categoryId': instance.categoryId,
      'courseFee': instance.courseFee,
      'courseDuraion': instance.courseDuraion,
      'videoUrls': instance.videoUrls,
      'subscribedStudents': instance.subscribedStudents,
      'serverTimeStamp':
          const SeverTimeStampConvertor().toJson(instance.serverTimeStamp),
    };
