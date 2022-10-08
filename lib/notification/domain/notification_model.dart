import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/helper/firabse_user_refrence_helper.dart';
import 'package:geat/core/helper/firebase_refrence_helper_for_notification.dart';
import 'package:geat/core/helper/firebase_time_stamp_helper.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';
part 'notification_model.g.dart';
part 'notification_model.freezed.dart';

@freezed
class Notification with _$Notification {
  const Notification._();
  const factory Notification({
    String? id,
    required NotifType type,
    @JsonKey(
      toJson: fireStoreUserToJson,
    )
        required dynamic fromUser,
    @JsonKey(
      toJson: fireStoreTextPostToJson,
    )
        dynamic textPost,
    @JsonKey(
      toJson: fireStoreComicPostToJson,
    )
        dynamic comicPost,
    // @JsonKey(
    //   toJson: fireStoreReImaginedToJson,
    // )
    //     dynamic reImagined,
    @JsonKey(
      toJson: fireStoreTimestampToJson,
      fromJson: fireStoreTimestampFromJson,
    )
        required dynamic date,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
  static Future<Notification?> fromFireStore(DocumentSnapshot? doc) async {
    if (doc == null) return null;
    final data = doc.data()! as Map<String, dynamic>;
    final fromUserRef = data['fromUser'] as DocumentReference;
    final fromUserDoc = await fromUserRef.get();
    final fromTextPostRef = data['textPost'] as DocumentReference?;
    final fromTextPostDoc = await fromTextPostRef?.get();
    final fromComicPostRef = data['comicPost'] as DocumentReference?;
    final fromComicPostDoc = await fromComicPostRef?.get();
    // final fromReImaginedRef = data['reImagined'] as DocumentReference?;
    // final fromReImaginedDoc = await fromReImaginedRef?.get();

    return Notification.fromJson(data).copyWith(
      id: doc.id,
      fromUser: User.fromFireStore(fromUserDoc),
      textPost: await TextPost.fromFireStore(fromTextPostDoc),
      comicPost: await ComicPost.fromFireStore(fromComicPostDoc),
      // reImagined: await ReImagined.fromFireStore(fromReImaginedDoc),
    );
  }
}
