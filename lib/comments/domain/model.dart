import 'package:geat/profile/profile.dart';

class Comments {
  final String? id;
  final String postid;
  final User author;
  final String content;
  final DateTime date;
  Comments({
    this.id,
    required this.postid,
    required this.author,
    required this.content,
    required this.date,
  });

  Comments copyWith({
    String? id,
    String? postid,
    User? author,
    String? content,
    DateTime? date,
  }) {
    return Comments(
      id: id ?? this.id,
      postid: postid ?? this.postid,
      author: author ?? this.author,
      content: content ?? this.content,
      date: date ?? this.date,
    );
  }
}
