import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/post/domain/comic_post_model.dart';

class ComicFeedsDetailsPage extends StatelessWidget {
  const ComicFeedsDetailsPage({super.key, required this.posts});
  final ComicPost posts;

  @override
  Widget build(BuildContext context) {
    return ComicFeedsDetailsView(posts: posts);
  }
}

class ComicFeedsDetailsView extends HookWidget {
  const ComicFeedsDetailsView({super.key, required this.posts});
  final ComicPost posts;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pageController = usePageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.secondary.withOpacity(0.1),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [],
                  );
                },
              );
            },
            icon: const Icon(Icons.settings_accessibility_outlined),
          ),
        ],
      ),
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemCount: posts.imageUrls.length,
        onPageChanged: (value) {
          log('print ${value + 1}');
        },
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(posts.imageUrls[index]),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                posts.imageUrls[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
