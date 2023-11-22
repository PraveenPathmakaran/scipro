import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/auth/value_objects.dart';
import 'package:scipro/domain/core/value_objects.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required UniqueId id,
    required UserName userName,
    required EmailAddress emailAddress,
    required Address address,
    required PhoneNumber phoneNumber,
    required PinCode pinCode,
    required DateValue joinDate,
  }) = _UserData;
}
