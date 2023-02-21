import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/app.dart';
import 'package:geat/app/constants/constants.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/feed/view/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

const feedTabTitle = <Widget>[
  Tab(text: 'Following'),
  Tab(text: 'Latest-Geat'),
  // const Tab(text: 'featured'),
  // const Tab(text: 'New'),
  // const Tab(text: 'Explore'),
  // const Tab(text: 'Others'),
];

class FeedPage extends HookWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final theme = Theme.of(context);
    return AutoTabsRouter.tabBar(
      routes: [
        FeedPostRouter(scrollController: scrollController),
        FeedPostRouter(scrollController: scrollController),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverAppBar(
                title: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Geat',
                    style: TextStyle(
                      fontSize: 52,
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      tooltip: 'Search',
                      onPressed: () =>
                          AutoRouter.of(context).push(const SearchRoute()),
                      style: TextButton.styleFrom(
                        backgroundColor: theme.colorScheme.secondary,
                      ),
                      icon: const Icon(
                        Icons.search_rounded,
                        weight: 12,
                      )
                          .animate(
                            onPlay: (controller) =>
                                controller.repeat(reverse: true),
                          )
                          .tint(color: theme.primaryColor, duration: 1000.ms)
                          .flipH(),
                    ),
                  )
                ],
                centerTitle: true,
                //pinned: true,
                floating: true,
                snap: true,
                //backgroundColor: theme.scaffoldBackgroundColor,
              ),
              SliverToBoxAdapter(
                child: Align(
                  child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 10, right: 10),
                    controller: tabController,
                    labelColor: theme.colorScheme.secondary,
                    unselectedLabelColor: theme.primaryColor.withOpacity(0.4),
                    isScrollable: true,
                    indicatorColor: theme.colorScheme.secondary,
                    indicatorSize: TabBarIndicatorSize.label,
                    // indicator: CircleTabIndicator(
                    //   color: Theme.of(context).colorScheme.primary,
                    //   radius: 4,
                    // ),
                    tabs: feedTabTitle,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 1, 5, 18),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.25,
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
