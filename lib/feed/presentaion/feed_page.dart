import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';
import 'package:geat/feed/application/all_feed_bloc/all_feed_bloc.dart';
import 'package:geat/feed/application/feed_bloc/feed_bloc.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/feed/application/post_actor_bloc/post_actor_bloc.dart';
import 'package:geat/post/domain/comic_post_model.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';
import 'package:shimmer/shimmer.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeedBloc(
            context.read<PostRepository>(),
            context.read<AuthBloc>(),
            context.read<LikedPostCubit>(),
          )
            ..add(const FeedEvent.fetchTextPosts())
            ..add(const FeedEvent.fetchPicturePosts()),
        ),
        BlocProvider(
          create: (context) => AllFeedBloc(
            context.read<PostRepository>(),
          )..add(const AllFeedEvent.fetchAllPost()),
        ),
      ],
      child: const FeedsViewWidget(),
    );
  }
}

class FeedsViewWidget extends HookWidget {
  const FeedsViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabController = useTabController(initialLength: feedTabTitle.length);
    final scrollController = useScrollController();
    scrollController.addListener(() {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange &&
          context.read<FeedBloc>().state.status != FeedStatus.paginating &&
          tabController.index == 0) {
        context.read<FeedBloc>().add(const FeedEvent.paginateTextPosts());
      } else if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange &&
          context.read<FeedBloc>().state.status != FeedStatus.paginating &&
          tabController.index == 1) {
        context.read<FeedBloc>().add(const FeedEvent.paginatePicturePosts());
      }
    });
    return BlocConsumer<FeedBloc, FeedState>(
      listener: (context, state) {
        if (state.status == FeedStatus.error) {
        } else if (state.status == FeedStatus.paginating) {
          showGenericSnackBar(
            context: context,
            title: 'RELAX...',
            content: 'Fetching more Post',
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (tabController.index == 0) {
                          if (state.textPost.isEmpty &&
                              state.status == FeedStatus.loaded) {
                            context
                                .read<FeedBloc>()
                                .add(const FeedEvent.fetchTextPosts());
                          }
                        } else if (tabController.index == 1) {
                          if (state.picturePost.isEmpty &&
                              state.status == FeedStatus.loaded) {
                            context
                                .read<FeedBloc>()
                                .add(const FeedEvent.fetchPicturePosts());
                          }
                        }
                      },
                      child: Text(
                        'Geat',
                        style: theme.textTheme.headline1,
                      ),
                    ),
                  ],
                ),
                //pinned: true,
                floating: true,
                snap: true,
                backgroundColor: theme.scaffoldBackgroundColor,
              ),
              FeedListTab(
                tabTitle: feedTabTitle,
                tabController: tabController,
              ),
              FeedList(
                scrollController: scrollController,
                tabController: tabController,
                state: state,
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 73),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'floating-action-btn-1',
                  onPressed: () => context.router.push(const TextPostRoute()),
                  backgroundColor: theme.colorScheme.secondary
                      .withOpacity(0.5)
                      .withAlpha(100),
                  hoverColor: theme.colorScheme.secondary.withOpacity(0.5),
                  child: const Icon(Icons.abc),
                ),
                const SizedBox(height: 16),
                FloatingActionButton(
                  heroTag: 'floating-action-btn-2',
                  onPressed: () => context.router.push(const ComicPostRoute()),
                  backgroundColor: theme.colorScheme.secondary
                      .withOpacity(0.5)
                      .withAlpha(100),
                  hoverColor: theme.colorScheme.secondary.withOpacity(0.5),
                  child: const Icon(Icons.image),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FeedListTab extends StatelessWidget {
  const FeedListTab({
    super.key,
    required this.tabTitle,
    required this.tabController,
  });
  final List<Widget> tabTitle;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Align(
        child: TabBar(
          labelPadding: const EdgeInsets.only(left: 10, right: 10),
          controller: tabController,
          labelColor: theme.colorScheme.primary,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          indicatorColor: theme.colorScheme.secondary,
          indicatorSize: TabBarIndicatorSize.label,
          // indicator: CircleTabIndicator(
          //   color: Theme.of(context).colorScheme.primary,
          //   radius: 4,
          // ),
          tabs: tabTitle,
        ),
      ),
    );
  }
}

class FeedList extends StatelessWidget {
  const FeedList({
    super.key,
    required this.tabController,
    required this.state,
    required this.scrollController,
  });
  final ScrollController scrollController;
  final TabController tabController;
  final FeedState state;

  @override
  Widget build(BuildContext context) {
    switch (state.status) {
      case FeedStatus.loading:
        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      default:
        return SliverToBoxAdapter(
          child: RefreshIndicator(
            onRefresh: () async {
              if (tabController.index == 0) {
                if (state.textPost.isEmpty &&
                    state.status == FeedStatus.loaded) {
                  context
                      .read<FeedBloc>()
                      .add(const FeedEvent.fetchTextPosts());
                }
              } else if (tabController.index == 1) {
                if (state.picturePost.isEmpty &&
                    state.status == FeedStatus.loaded) {
                  context
                      .read<FeedBloc>()
                      .add(const FeedEvent.fetchPicturePosts());
                }
              }
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 18, 5, 18),
              child: SizedBox(
                height: 750,
                child: BlocBuilder<AllFeedBloc, AllFeedState>(
                  builder: (context, allFeedState) {
                    return TabBarView(
                      controller: tabController,
                      children: [
                        if (state.textPost.isEmpty)
                          const EmptyFeedView()
                        else
                          TextFeedCard(
                            textPosts: state.textPost,
                            scrollController: scrollController,
                          ),
                        if (state.picturePost.isEmpty)
                          const EmptyFeedView()
                        else
                          ComicFeedCard(
                            comicPosts: state.picturePost,
                            scrollController: scrollController,
                          ),
                        if (allFeedState.textPost.isEmpty)
                          const EmptyFeedView()
                        else
                          TextFeedCard(
                            textPosts: allFeedState.textPost,
                            scrollController: scrollController,
                          ),
                        if (allFeedState.picturePost.isEmpty)
                          const EmptyFeedView()
                        else
                          ComicFeedCard(
                            comicPosts: allFeedState.picturePost,
                            scrollController: scrollController,
                          ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
    }
  }
}

const feedTabTitle = <Widget>[
  Tab(text: 'Books'),
  Tab(text: 'Comic'),
  Tab(text: 'Latest-Books'),
  Tab(text: 'Latest-Comic'),
  // const Tab(text: 'featured'),
  // const Tab(text: 'New'),
  // const Tab(text: 'Explore'),
  // const Tab(text: 'Others'),
];

class EmptyFeedView extends StatelessWidget {
  const EmptyFeedView({
    super.key,
    this.extraWidget = const SizedBox.shrink(),
  });

  final Widget extraWidget;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Icon(
          Icons.image_not_supported_outlined,
          size: 165,
          color: theme.colorScheme.primary.withOpacity(0.3),
        ),
        Text(
          'No Post Yet',
          style: theme.textTheme.headline1!.copyWith(
            fontSize: 54,
          ),
        ),
        extraWidget,
      ],
    );
  }
}

class FeedsLoadingStateWidget extends StatelessWidget {
  const FeedsLoadingStateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 16,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
        //repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          highlightColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          child: Container(
            height: 20,
            color: Colors.blueAccent,
          ),
        );
      },
    );
  }
}

class ComicFeedCard extends StatelessWidget {
  const ComicFeedCard({
    super.key,
    required this.comicPosts,
    required this.scrollController,
  });
  final List<ComicPost?> comicPosts;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final comicPost = comicPosts;

    return GridView.builder(
      controller: scrollController,
      itemCount: comicPost.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
        //repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        final comic = comicPost[index];
        final author = comic!.author as User;
        final likedPostState = context.watch<LikedPostCubit>().state;
        final isLiked = likedPostState.likedComicPostIds.contains(comic.id);
        final recentlyLiked =
            likedPostState.recentlyLikedComicPostIds.contains(comic.id);
        return Container(
          height: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.all(Radius.circular(8.2)),
          ),
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Stack(
              //clipBehavior: Clip.antiAlias,
              fit: StackFit.expand,
              children: [
                GestureDetector(
                  onTap: () =>
                      context.router.push(ComicFeedsDetailsRoute(posts: comic)),
                  child: postImageDisplay(comic),
                ),
                Positioned(
                  top: 2,
                  left: 2,
                  child: GestureDetector(
                    onTap: () => context.router.push(
                      ProfileRoute(userId: author.id),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5),
                          strokeAlign: StrokeAlign.center,
                        ),
                      ),
                      child: UserProfileImageWidget(
                        radius: 25,
                        profileImageUrl: author.profileImageUrl ?? '',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 2,
                  right: 2,
                  child: Container(
                    height: 35,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: FittedBox(
                        child: Text(
                          comic.title,
                          style: Theme.of(context).textTheme.headline5,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ),
                ),
                ExtrasViewWidgets(
                  isLiked: isLiked,
                  recentlyLiked: recentlyLiked,
                  onLike: () {
                    if (isLiked) {
                      context
                          .read<LikedPostCubit>()
                          .unLikeComicPost(post: comic);
                    } else {
                      context.read<LikedPostCubit>().likeComicPost(post: comic);
                    }
                  },
                  likes: comic.likes,
                  onCommentTap: () =>
                      context.router.push(CommentComicRoute(comicPost: comic)),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: Container(
                    height: 35,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconButton(
                        onPressed: () => context
                            .read<PostActorBloc>()
                            .add(PostActorEvent.saveComicPost(comic)),
                        icon: const Icon(
                          Icons.save_alt_rounded,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget postImageDisplay(ComicPost comic) {
    return comic.imageUrls.isEmpty
        ? Image.asset('assets/images/color line.jpeg')
        : CachedNetworkImage(
            imageUrl: comic.imageUrls.first,
            fit: BoxFit.cover,
          );
  }
}

class ExtrasViewWidgets extends StatelessWidget {
  const ExtrasViewWidgets({
    super.key,
    required this.isLiked,
    required this.onLike,
    this.recentlyLiked = false,
    required this.likes,
    required this.onCommentTap,
  });
  final bool isLiked;
  final VoidCallback onLike;
  final VoidCallback onCommentTap;
  final bool recentlyLiked;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 2,
      top: 82,
      child: Container(
        width: 35,
        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
        child: Column(
          children: [
            IconButton(
              onPressed: onLike,
              icon: isLiked
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_outlined,
                    ),
            ),
            Text('${recentlyLiked ? likes + 1 : likes}'),
            IconButton(
              onPressed: onCommentTap,
              icon: const Icon(
                Icons.comment_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFeedCard extends StatelessWidget {
  const TextFeedCard({
    super.key,
    required this.textPosts,
    required this.scrollController,
  });
  final List<TextPost?> textPosts;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final textPost = textPosts;
    return GridView.builder(
      controller: scrollController,
      itemCount: textPost.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
        //repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        final text = textPost[index];
        final author = text!.author as User;
        final likedPostState = context.watch<LikedPostCubit>().state;
        final isLiked = likedPostState.likedTextPostIds.contains(text.id);
        final recentlyLiked =
            likedPostState.recentlyLikedTextPostIds.contains(text.id);
        return Container(
          height: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.all(Radius.circular(8.2)),
          ),
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Stack(
              //clipBehavior: Clip.antiAlias,
              fit: StackFit.expand,
              children: [
                GestureDetector(
                  onTap: () =>
                      context.router.push(TextFeedsDetailsRoute(posts: text)),
                  child: postImageDisplay(text),
                ),
                Positioned(
                  top: 2,
                  left: 2,
                  child: GestureDetector(
                    onTap: () => context.router.push(
                      ProfileRoute(userId: author.id),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5),
                          strokeAlign: StrokeAlign.center,
                        ),
                      ),
                      child: UserProfileImageWidget(
                        radius: 25,
                        profileImageUrl: author.profileImageUrl ?? '',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 2,
                  right: 2,
                  child: Container(
                    height: 35,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: FittedBox(
                        child: Text(
                          text.title,
                          style: Theme.of(context).textTheme.headline5,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ),
                ),
                ExtrasViewWidgets(
                  isLiked: isLiked,
                  recentlyLiked: recentlyLiked,
                  onLike: () {
                    if (isLiked) {
                      context.read<LikedPostCubit>().unLikeTextPost(post: text);
                    } else {
                      context.read<LikedPostCubit>().likeTextPost(post: text);
                    }
                  },
                  likes: text.likes,
                  onCommentTap: () =>
                      context.router.push(CommentTextRoute(textPost: text)),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: Container(
                    height: 35,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconButton(
                        onPressed: () => context
                            .read<PostActorBloc>()
                            .add(PostActorEvent.saveTextPost(text)),
                        icon: const Icon(
                          Icons.save_alt_rounded,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget postImageDisplay(TextPost text) {
    return text.imageUrl != null
        ? CachedNetworkImage(
            imageUrl: text.imageUrl!,
            fit: BoxFit.cover,
          )
        : Image.asset(
            'assets/images/night building.jpeg',
            fit: BoxFit.fill,
          );
  }
}
