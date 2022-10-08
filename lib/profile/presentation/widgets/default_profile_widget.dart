import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/core/routes/app_router.gr.dart';

import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';
import 'package:geat/profile/presentation/widgets/profile_page_button.dart';
import 'package:geat/profile/presentation/widgets/profile_stat.dart';
import 'package:geat/profile/presentation/widgets/profile_tab_list.dart';
import 'package:geat/profile/presentation/widgets/user_profile_detail_widget.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';

class DefaultProfileWidget extends HookWidget {
  const DefaultProfileWidget({
    super.key,
    required this.state,
  });
  final ProfileState state;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tabController = useTabController(
      initialLength:
          state.isCurrentUser == true ? tabTitle.length : tabTitle.length - 1,
    );
    final scrollController = useScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Text(state.user.username),
        backgroundColor: theme.scaffoldBackgroundColor,
        actions: [
          if (state.isCurrentUser == true)
            Padding(
              padding: const EdgeInsets.only(right: 14, top: 2, bottom: 2),
              child: IconButton(
                onPressed: () => context.router.push(const SettingsRoute()),
                icon: const Icon(Icons.settings),
              ),
            ),
        ],
      ),
      floatingActionButton: state.picturePost.length < 6 ||
              state.textPost.length < 6
          ? null
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: state.picturePost.length + state.textPost.length == 0
                    ? null
                    : () {
                        scrollController.jumpTo(0);
                      },
                child: const Icon(
                  Icons.arrow_upward,
                ),
              ),
            ),
      body: RefreshIndicator(
        backgroundColor: theme.scaffoldBackgroundColor,
        color: theme.colorScheme.primary,
        onRefresh: () async {
          context.read<ProfileBloc>().add(ProfileEvent.loadUser(state.user.id));
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 05,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: SizedBox(
                  height: 250.5,
                  child: PageView.builder(
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      if (index == 0) {
                        return ProfilePageDetailCard(
                          itemIndex: index,
                          theme: theme,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: ProfileStat(state: state),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: UserProfileImageWidget(
                                        radius: 220,
                                        profileImageUrl:
                                            state.user.profileImageUrl ?? '',
                                      ),
                                    ),
                                    Expanded(
                                      child: ProfilePageButton(
                                        context: context,
                                        isCurrentUser: state.isCurrentUser,
                                        isFollowing: state.isFollowing,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      } else if (index == 1) {
                        return ProfilePageDetailCard(
                          itemIndex: index,
                          theme: theme,
                          child: UserProfileDetailsWidget(user: state.user),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ),
              ),
            ),
            ProfileListTab(
              tabController: tabController,
              tabTitle: state.isCurrentUser == true
                  ? tabTitle
                  : tabTitle.sublist(0, 2),
            ),
            if (state.textPost.isNotEmpty || state.picturePost.isNotEmpty)
              ProfilePostList(
                tabController: tabController,
                scrollController: scrollController,
                profileState: state,
              ),
          ],
        ),
      ),
    );
  }
}

class ProfilePageDetailCard extends StatelessWidget {
  const ProfilePageDetailCard({
    super.key,
    required this.theme,
    required this.child,
    required this.itemIndex,
  });

  final ThemeData theme;
  final Widget child;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: theme.scaffoldBackgroundColor,
      elevation: 5.0,
      borderOnForeground: false,
      surfaceTintColor: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          left: 20,
          right: 10,
          bottom: 5,
        ),
        child: Column(
          children: [
            SizedBox(height: 210, child: child),
            SizedBox(
              height: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(2, (indexDots) {
                  return Container(
                    margin: const EdgeInsets.only(right: 2),
                    width: itemIndex == indexDots ? 35 : 10,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: itemIndex == indexDots
                          ? theme.colorScheme.secondary
                          : theme.colorScheme.secondary.withOpacity(0.3),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final tabTitle = <Widget>[
  const Tab(text: 'Book'),
  const Tab(text: 'Comic'),
  const Tab(text: 'Saved'),
  // const Tab(text: 'Rewrite'),
  // const Tab(text: 'Pinned'),
];
final tabTitleX = <Widget>[
  const Tab(text: 'Book'),
  const Tab(text: 'Comic'),

  // const Tab(text: 'Rewrite'),
  // const Tab(text: 'Pinned'),
];
