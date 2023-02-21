import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/app.dart';
import 'package:geat/app/constants/constants.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/profile/view/widget/widgets.dart';
import 'package:go_router/go_router.dart';

final tabTitle = <Widget>[
  const Tab(text: 'Post'),
  const Tab(text: 'Saved'),
  const Tab(text: 'Rewrite'),
  // const Tab(text: 'Pinned'),
];
// final tabTitleX = <Widget>[
//   const Tab(text: 'Post'),
//   // const Tab(text: 'Rewrite'),
//   // const Tab(text: 'Pinned'),
// ];

class ProfilePage extends HookWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final theme = Theme.of(context);
    return AutoTabsRouter.tabBar(
      routes: [
        ProfilePostGridRouter(scrollController: scrollController),
        ProfileReImaginedGridRouter(scrollController: scrollController),
        ProfileSavedGridRouter(scrollController: scrollController),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          // appBar: AppBar(
          //   title: const Text('@ Arabjay01'),
          //   //backgroundColor: theme.scaffoldBackgroundColor,
          //   actions: [
          //     if (true)
          //       Padding(
          //         padding: const EdgeInsets.only(right: 14, top: 2, bottom: 2),
          //         child: IconButton(
          //           onPressed: () {},
          //           icon: const Icon(Icons.settings),
          //         ),
          //       ),
          //   ],
          // ),
          body: RefreshIndicator(
            onRefresh: () async {},
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: ProfilePageUserDetails(),
                  ),
                  SliverToBoxAdapter(
                    child: Align(
                      child: TabBar(
                        labelPadding:
                            const EdgeInsets.only(left: 10, right: 10),
                        controller: tabController,
                        labelColor: theme.colorScheme.secondary,
                        unselectedLabelColor:
                            theme.primaryColor.withOpacity(0.4),
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
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 1,
                      (BuildContext context, int index) {
                        return Card(
                          elevation: 5.0,
                          borderOnForeground: false,
                          surfaceTintColor: Colors.indigo,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 1, 2, 1),
                            child: SizedBox(
                              height: 450,
                              child: child,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
