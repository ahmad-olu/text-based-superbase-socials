import 'package:geat/profile/profile.dart';

class PicturePost {
  final String? id;
  final User author;
  final List<String> imagesUrl;
  final String title;
  final int likes;
  final List<String> tags;
  final DateTime date;
  PicturePost({
    this.id,
    required this.author,
    required this.imagesUrl,
    required this.title,
    required this.likes,
    required this.tags,
    required this.date,
  });

  PicturePost copyWith({
    String? id,
    User? author,
    List<String>? imagesUrl,
    String? title,
    int? likes,
    List<String>? tags,
    DateTime? date,
  }) {
    return PicturePost(
      id: id ?? this.id,
      author: author ?? this.author,
      imagesUrl: imagesUrl ?? this.imagesUrl,
      title: title ?? this.title,
      likes: likes ?? this.likes,
      tags: tags ?? this.tags,
      date: date ?? this.date,
    );
  }
}
