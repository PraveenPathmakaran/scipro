import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/core/value_objects.dart';

part 'admin_data.freezed.dart';

@freezed
class AdminData with _$AdminData {
  const factory AdminData({
    required UniqueId id,
  }) = _AdminData;
}
