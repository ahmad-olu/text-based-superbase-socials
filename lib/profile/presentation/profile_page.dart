import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/profile/presentation/widgets/profile_details.dart';
import 'package:geat/profile/presentation/widgets/profile_stat.dart';
import 'package:geat/profile/presentation/widgets/profile_tab.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

class ProfileView extends HookWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final _tabTitle = <Widget>[
      const Tab(text: 'Grid'),
      const Tab(text: 'List'),
      const Tab(text: 'Rewrite'),
      const Tab(text: 'Pinned'),
    ];
    final _tabController = useTabController(initialLength: _tabTitle.length);
    final _scrollController = useScrollController();
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            _scrollController.jumpTo(0);
          },
          child: const Icon(
            Icons.arrow_upward,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 130.5,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.3),
                            child: Row(
                              children: const [
                                ProfileStat(
                                  firstLabel: 'Followers',
                                  firstCount: 45,
                                  secondLabel: 'Post',
                                  secondCount: 59999,
                                ),
                                SizedBox(width: 12),
                                ProfileStat(
                                  firstLabel: 'Following',
                                  firstCount: 45,
                                  secondLabel: 'Re-write',
                                  secondCount: 59999,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: UserProfileImageWidget(
                            radius: 60,
                            profileImageUrl: '',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  ProfileDetailsWidget(context: context),
                ],
              ),
            ),
          ),
          ProfileListTab(tabController: _tabController, tabTitle: _tabTitle),
          ProfilePostList(
            tabController: _tabController,
            scrollController: _scrollController,
          ),
        ],
      ),
    );
  }
}
