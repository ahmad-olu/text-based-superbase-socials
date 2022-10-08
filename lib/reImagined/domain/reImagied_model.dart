import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/profile/domain/user_model.dart';

part 'reImagied_model.freezed.dart';
part 'reImagied_model.g.dart';

@freezed
class ReImagined with _$ReImagined {
  const ReImagined._();
  const factory ReImagined({
    String? id,
    required String postId,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic author,
    required String content,
    required int likes,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic date,
  }) = _ReImagined;

  factory ReImagined.fromJson(Map<String, dynamic> json) =>
      _$ReImaginedFromJson(json);

  static Future<ReImagined?> fromFireStore(DocumentSnapshot? doc) async {
    if (doc == null) return null;
    final data = doc.data()! as Map<String, dynamic>;
    final authorRef = data['author'] as DocumentReference;
    final authorDoc = await authorRef.get();
    return ReImagined.fromJson(data)
        .copyWith(id: doc.id, author: User.fromFireStore(authorDoc));
  }
}
