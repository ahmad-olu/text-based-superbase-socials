import 'package:flutter/material.dart';
import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';
import 'package:geat/profile/presentation/widgets/book_grid.dart';

class ProfileListTab extends StatelessWidget {
  const ProfileListTab({
    super.key,
    required this.tabController,
    required this.tabTitle,
  });
  final TabController tabController;
  final List<Widget> tabTitle;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        child: TabBar(
          labelPadding: const EdgeInsets.only(left: 10, right: 10),
          controller: tabController,
          labelColor: Theme.of(context).colorScheme.primary,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Theme.of(context).colorScheme.secondary,
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

class ProfilePostList extends StatelessWidget {
  const ProfilePostList({
    super.key,
    required this.tabController,
    required this.scrollController,
    required this.profileState,
  });
  final TabController tabController;
  final ScrollController scrollController;
  final ProfileState profileState;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 1,
        (BuildContext context, int index) {
          return Card(
            color: theme.scaffoldBackgroundColor,
            elevation: 5.0,
            borderOnForeground: false,
            surfaceTintColor: theme.colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
              child: SizedBox(
                height: 575,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    BookGridViewText(
                      scrollController: scrollController,
                      posts: profileState.textPost,
                    ),
                    BookGridViewComic(
                      scrollController: scrollController,
                      posts: profileState.picturePost,
                    ),
                    if (profileState.isCurrentUser == true)
                      BookGridSavedPosts(
                        scrollController: scrollController,
                        posts: profileState.savedPosts,
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
