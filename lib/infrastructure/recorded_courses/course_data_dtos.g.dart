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
      courseName: json['courseName'] as String,
      facultyName: json['facultyName'] as String,
      courseFee: json['courseFee'] as num,
      courseDuraion: json['courseDuraion'] as num,
      serverTimeStamp: const SeverTimeStampConvertor()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$CourseDataDtosImplToJson(
        _$CourseDataDtosImpl instance) =>
    <String, dynamic>{
      'courseName': instance.courseName,
      'facultyName': instance.facultyName,
      'courseFee': instance.courseFee,
      'courseDuraion': instance.courseDuraion,
      'serverTimeStamp':
          const SeverTimeStampConvertor().toJson(instance.serverTimeStamp),
    };
