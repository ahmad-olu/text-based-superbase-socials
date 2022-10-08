import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:geat/core/domain/model/saved_post_model.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';

class BookGridViewText extends StatelessWidget {
  const BookGridViewText({
    super.key,
    required this.scrollController,
    required this.posts,
  });

  final ScrollController scrollController;
  final List<TextPost?> posts;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 1.4,
      ),
      //padding: const EdgeInsets.all(1.5),
      controller: scrollController,
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return GestureDetector(
          onTap: () => context.router.push(TextFeedsDetailsRoute(posts: post!)),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
            margin: const EdgeInsets.all(5),
            child: GridTile(
              // header: Container(
              //   color: Colors.white,
              //   padding: const EdgeInsets.all(2.0),
              //   child: FittedBox(
              //     fit: BoxFit.fitWidth,
              //     child: Text(
              //       title!,
              //       textAlign: TextAlign.center,
              //       style: Theme.of(context).textTheme.headline5,
              //     ),
              //   ),
              // ),

              // footer: Container(
              //   color: Colors.white,
              //   padding: const EdgeInsets.all(2.0),
              //   child: FittedBox(
              //     fit: BoxFit.fitWidth,
              //     child: Text(
              //       userName!,
              //       textAlign: TextAlign.center,
              //       style: Theme.of(context).textTheme.headline5,
              //     ),
              //   ),
              // ),
              child:
                  //todo!! storage s3 access denied==> image can not show
                  post!.imageUrl == null
                      ? Image.asset('assets/images/color line.jpeg')
                      : CachedNetworkImage(
                          imageUrl: post.imageUrl!,
                          fit: BoxFit.cover,
                        ),
            ),
          ),
        );
      },
    );
  }
}

class BookGridViewComic extends StatelessWidget {
  const BookGridViewComic({
    super.key,
    required this.scrollController,
    required this.posts,
  });

  final ScrollController scrollController;
  final List<ComicPost?> posts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 1.4,
      ),
      padding: const EdgeInsets.all(1.5),
      controller: scrollController,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return GestureDetector(
          onTap: () =>
              context.router.push(ComicFeedsDetailsRoute(posts: post!)),
          child: Container(
            padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
            child: GridTile(
              // header: Container(
              //   color: Colors.white,
              //   padding: const EdgeInsets.all(2.0),
              //   child: FittedBox(
              //     fit: BoxFit.fitWidth,
              //     child: Text(
              //       title!,
              //       textAlign: TextAlign.center,
              //       style: Theme.of(context).textTheme.headline5,
              //     ),
              //   ),
              // ),

              // footer: Container(
              //   color: Colors.white,
              //   padding: const EdgeInsets.all(2.0),
              //   child: FittedBox(
              //     fit: BoxFit.fitWidth,
              //     child: Text(
              //       userName!,
              //       textAlign: TextAlign.center,
              //       style: Theme.of(context).textTheme.headline5,
              //     ),
              //   ),
              // ),
              child:
                  //todo!! storage s3 access denied==> image can not show
                  post!.imageUrls.isEmpty
                      ? Image.asset('assets/images/color line.jpeg')
                      : CachedNetworkImage(
                          imageUrl: post.imageUrls.first,
                          fit: BoxFit.cover,
                        ),
            ),
          ),
        );
      },
    );
  }
}

class BookGridSavedPosts extends StatelessWidget {
  const BookGridSavedPosts({
    super.key,
    required this.scrollController,
    required this.posts,
  });

  final ScrollController scrollController;
  final List<SavedPost?> posts;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 1.4,
      ),
      //padding: const EdgeInsets.all(1.5),
      controller: scrollController,
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        if (post?.postType == PostType.textPost) {
          final textPost = post!.textPost as TextPost;
          return GestureDetector(
            onTap: () => context.router.push(
              TextFeedsDetailsRoute(
                posts: textPost,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
              margin: const EdgeInsets.all(5),
              child: GridTile(
                child: textPost.imageUrl == null
                    ? Image.asset('assets/images/color line.jpeg')
                    : CachedNetworkImage(
                        imageUrl: textPost.imageUrl!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          );
        } else if (post?.postType == PostType.comicPost) {
          final comicPost = post!.comicPost as ComicPost;
          return GestureDetector(
            onTap: () =>
                context.router.push(ComicFeedsDetailsRoute(posts: comicPost)),
            child: Container(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
              child: GridTile(
                child: comicPost.imageUrls.isEmpty
                    ? Image.asset('assets/images/color line.jpeg')
                    : CachedNetworkImage(
                        imageUrl: comicPost.imageUrls.first,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
