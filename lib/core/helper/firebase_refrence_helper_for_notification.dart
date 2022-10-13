import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

DocumentReference? fireStorePostToJson(Post? post) {
  if (post == null) return null;
  return FirebaseFirestore.instance.collection(Paths.posts).doc(post.id);
}

DocumentReference? fireStoreReImaginedToJson(ReImagined? reImagined) {
  if (reImagined == null) return null;
  return FirebaseFirestore.instance
      .collection(Paths.reImagined)
      .doc(reImagined.id);
}
