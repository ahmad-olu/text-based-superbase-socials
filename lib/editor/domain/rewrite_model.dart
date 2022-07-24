import 'package:geat/profile/profile.dart';

class Rewrite {
  final String? id;
  final User author;
  final String content;
  final String postid;
  final int likes;
  final DateTime date;
  Rewrite({
    this.id,
    required this.author,
    required this.content,
    required this.postid,
    required this.likes,
    required this.date,
  });

  Rewrite copyWith({
    String? id,
    User? author,
    String? content,
    String? postid,
    int? likes,
    DateTime? date,
  }) {
    return Rewrite(
      id: id ?? this.id,
      author: author ?? this.author,
      content: content ?? this.content,
      postid: postid ?? this.postid,
      likes: likes ?? this.likes,
      date: date ?? this.date,
    );
  }
}
