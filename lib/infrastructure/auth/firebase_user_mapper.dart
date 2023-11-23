import 'package:firebase_auth/firebase_auth.dart';
import 'package:scipro/domain/auth/admin_data.dart';
import 'package:scipro/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseAuth {
  AdminData? toDomain() {
    return currentUser == null
        ? null
        : AdminData(id: UniqueId.fromUniqueString(currentUser!.uid));
  }
}
