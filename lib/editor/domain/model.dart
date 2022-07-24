import 'package:geat/profile/profile.dart';

class TextPost {
  final String? id;
  final User author;
  final String imageUrl;
  final String title;
  final String content;
  final int likes;
  final List<String> tags;
  final DateTime date;
  TextPost({
    this.id,
    required this.author,
    required this.imageUrl,
    required this.title,
    required this.content,
    required this.likes,
    required this.tags,
    required this.date,
  });

  TextPost copyWith({
    String? id,
    User? author,
    String? imageUrl,
    String? title,
    String? content,
    int? likes,
    List<String>? tags,
    DateTime? date,
  }) {
    return TextPost(
      id: id ?? this.id,
      author: author ?? this.author,
      imageUrl: imageUrl ?? this.imageUrl,
      title: title ?? this.title,
      content: content ?? this.content,
      likes: likes ?? this.likes,
      tags: tags ?? this.tags,
      date: date ?? this.date,
    );
  }
}
