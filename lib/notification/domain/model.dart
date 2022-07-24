import 'package:geat/editor/editor.dart';
import 'package:geat/post/domain/model.dart';
import 'package:geat/profile/profile.dart';

enum NotifType {
  like,
  comment,
  follow,
  reImagined,
}

class Notif {
  final String? id;
  final NotifType type;
  final User fromUser;
  final TextPost? textPost;
  final PicturePost? picturePost;
  final DateTime date;
  const Notif({
    this.id,
    required this.type,
    required this.fromUser,
    this.textPost,
    this.picturePost,
    required this.date,
  });

  Notif copyWith({
    String? id,
    NotifType? type,
    User? fromUser,
    TextPost? textPost,
    PicturePost? picturePost,
    DateTime? date,
  }) {
    return Notif(
      id: id ?? this.id,
      type: type ?? this.type,
      fromUser: fromUser ?? this.fromUser,
      textPost: textPost ?? this.textPost,
      picturePost: picturePost ?? this.picturePost,
      date: date ?? this.date,
    );
  }
}
