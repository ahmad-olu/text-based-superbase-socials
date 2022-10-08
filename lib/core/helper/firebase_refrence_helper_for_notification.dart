import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geat/core/constants/paths.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/reImagined/domain/reImagied_model.dart';

DocumentReference? fireStoreTextPostToJson(TextPost? textPost) {
  if (textPost == null) return null;
  return FirebaseFirestore.instance
      .collection(Paths.textPosts)
      .doc(textPost.id);
}

DocumentReference? fireStoreComicPostToJson(ComicPost? comicPost) {
  if (comicPost == null) return null;
  return FirebaseFirestore.instance
      .collection(Paths.comicPosts)
      .doc(comicPost.id);
}

DocumentReference? fireStoreReImaginedToJson(ReImagined? reImagined) {
  if (reImagined == null) return null;
  return FirebaseFirestore.instance
      .collection(Paths.reImagined)
      .doc(reImagined.id);
}
