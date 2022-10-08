import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String username,
    required String? fullName,
    required String email,
    required String? website,
    required String? profileImageUrl,
    required int followers,
    required int following,
    required String? bio,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic dateJoined,
    required String? location,
  }) = _User;

  static const empty = User(
    id: '',
    username: '',
    fullName: '',
    email: '',
    website: '',
    profileImageUrl: '',
    followers: 0,
    following: 0,
    bio: '',
    dateJoined: null,
    location: '',
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromFireStore(DocumentSnapshot doc) {
    return User.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
