import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/profile/domain/user_model.dart' as user;

DateTime? fireStoreTimestampFromJson(dynamic value) {
  if (value is Timestamp) {
    return value.toDate();
  }
  return null;
}

dynamic fireStoreTimestampToJson(dynamic fieldValue) {
  if (fieldValue is DateTime) {
    return Timestamp.fromDate(fieldValue);
  } else if (fieldValue is FieldValue) {
    return fieldValue;
  } else {
    return null;
  }
}

// Timestamp firestoreTimestampFromJson(dynamic value) {
//   return value != null
//       ? Timestamp.fromMicrosecondsSinceEpoch(value as int)
//       : value as Timestamp;
// }

// dynamic firestoreTimestampToJson(dynamic value) => value;

// class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
//   const TimestampConverter();

//   @override
//   DateTime fromJson(Timestamp timestamp) {
//     return timestamp.toDate();
//   }

//   @override
//   Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
// }

