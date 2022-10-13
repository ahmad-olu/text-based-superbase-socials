import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:geat/post/domain/post_model.dart';

class BooksDetailsPage extends StatelessWidget {
  const BooksDetailsPage({
    super.key,
    this.posts,
    this.reImagined,
    required this.isReImaginedAvailable,
  });
  final Post? posts;
  final String? reImagined;
  final bool isReImaginedAvailable;

  @override
  Widget build(BuildContext context) {
    return BookDetailsView(
      posts: posts,
      isReImaginedAvailable: isReImaginedAvailable,
      reImagined: reImagined,
    );
  }
}

class BookDetailsView extends HookWidget {
  const BookDetailsView({
    super.key,
    this.posts,
    this.reImagined,
    required this.isReImaginedAvailable,
  });
  final Post? posts;
  final String? reImagined;
  final bool isReImaginedAvailable;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isReImaginedAvailable == false ? posts!.title : 'ReImagined',
          style: theme.textTheme.headline2,
        ),
      ),
      body: Padding(
        padding: isReImaginedAvailable == false
            ? const EdgeInsets.all(8.0)
            : const EdgeInsets.only(top: 50, bottom: 20, right: 5, left: 5),
        child: Markdown(
          controller: scrollController,
          data: dataToView(posts?.content, reImagined, isReImaginedAvailable),
        ),
      ),
    );
  }

  String dataToView(
    String? posts,
    String? reImagined,
    // ignore: avoid_positional_boolean_parameters
    bool isReImaginedAvailable,
  ) {
    if (isReImaginedAvailable == true) {
      return reImagined!;
    } else {
      return posts!;
    }
  }
}
