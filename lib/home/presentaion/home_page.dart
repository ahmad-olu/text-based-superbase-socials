import 'package:auto_route/auto_route.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: AutoTabsScaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        primary: false,
        routes: [
          const FeedsRouter(),
          const SearchRouter(),
          const PostRouter(),
          const NotificationRouter(),
          ProfileRouter(
            children: [
              ProfileRoute(userId: context.read<AuthBloc>().state.user!.uid),
            ],
          ),
        ],
        extendBody: true,
        bottomNavigationBuilder: (_, tabsRouter) {
          return DotNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: theme.colorScheme.primary,
            unselectedItemColor: theme.colorScheme.secondary,
            dotIndicatorColor: theme.colorScheme.primary,
            borderRadius: 15,
            curve: Curves.easeInCubic,
            backgroundColor: theme.colorScheme.secondary.withOpacity(0.1),
            items: [
              DotNavigationBarItem(
                icon: const Icon(
                  Icons.local_fire_department_sharp,
                  size: 30,
                ),
                // title: const Text('Feeds'),
              ),
              DotNavigationBarItem(
                icon: const Icon(
                  Icons.search_sharp,
                  size: 30,
                ),
              ),
              DotNavigationBarItem(
                icon: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
              DotNavigationBarItem(
                icon: const Icon(
                  Icons.notifications_none_sharp,
                  size: 30,
                ),
                // title: const Text('Notification'),
              ),
              DotNavigationBarItem(
                icon: const Icon(
                  Icons.person,
                  size: 30,
                ),
                // title: const Text('Profile'),
              ),
            ],
          );
        },
      ),
    );
  }
}
