import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/profile/domain/user_model.dart' as user;

// dynamic fireStoreUserFromJson(DocumentReference? doc) async {
//   if (doc == null) return null;
//   final authorDoc = await doc.get();
//   if (authorDoc.exists) {
//     return user.User.fromFireStore(authorDoc);
//   }
//   return null;
// }

DocumentReference? fireStoreUserToJson(user.User? value) {
  if (value == null) return null;
  return FirebaseFirestore.instance.collection(Paths.users).doc(value.id);
}

// class UserConverter implements JsonConverter<user.User?, DocumentReference?> {
//   @override
//   user.User? fromJson(DocumentReference<Object?>? json) {
//     if (json == null) return null;
//     final authorDoc = json.get();
//     authorDoc.then((author) {
//       return user.User.fromFireStore(author);
//     });
//   }

//   @override
//   DocumentReference<Object?>? toJson(user.User? object) {
//     if (object == null) return null;
//     return FirebaseFirestore.instance.collection(Paths.users).doc(object.id);
//   }
// }