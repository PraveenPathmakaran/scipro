import 'package:firebase_auth/firebase_auth.dart';
import 'package:scipro/domain/auth/admin_data.dart';
import 'package:scipro/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  AdminData toDomain() {
    return AdminData(id: UniqueId.fromUniqueString(uid));
  }
}
