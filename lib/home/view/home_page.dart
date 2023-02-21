import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/constants/constants.dart';
import 'package:geat/app/provider/provider.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: AutoTabsScaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        primary: false,
        routes: const [
          FeedsRouter(),
          //SearchRoute(),
          CreatePostsRouter(),
          NotificationsRouter(),
          // ProfileRouter(
          //   children: [
          //     ProfileRoute(userId: context.read<AuthBloc>().state.user!.uid),
          //   ],
          // ),
          ProfilesRouter(),
        ],
        extendBody: true,
        bottomNavigationBuilder: (_, tabsRouter) {
          return SlidingClippedNavBar(
            selectedIndex: tabsRouter.activeIndex,
            onButtonPressed: tabsRouter.setActiveIndex,
            activeColor: theme.colorScheme.primary,
            inactiveColor: theme.colorScheme.secondary,
            backgroundColor: theme.scaffoldBackgroundColor,
            barItems: [
              BarItem(
                icon: Icons.local_fire_department_sharp,
                title: 'Feeds',
                // title: const Text('Feeds'),
              ),
              BarItem(
                icon: Icons.add_box,
                title: 'create Post',
              ),
              // BarItem(
              //   icon: const Icon(
              //     Icons.add,
              //     size: 30,
              //   ),
              // ),
              BarItem(
                icon: Icons.notifications_none_sharp,
                title: 'Notifications',
                // title: const Text('Notification'),
              ),
              BarItem(
                icon: Icons.person,
                title: 'Account',
                // title: const Text('Profile'),
              ),
            ],
          );
        },
      ),
    );
  }
}



// class HomePage extends StatelessWidget {
//   const HomePage({super.key, required this.child});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async => false,
//       child: Scaffold(
//         body: child,
//         bottomNavigationBar: const BottomNav(),
//       ),
//     );
//   }
// }

// class BottomNav extends ConsumerWidget {
//   const BottomNav({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     void onTap(int index) {
//       ref.read(bottomNavProvider.notifier).setPosition(index);
//       switch (index) {
//         case 0:
//           context.go('/${BottomNavName.feeds}');
//           break;
//         // case 1:
//         //   context.go('/${BottomNavName.search}');
//         //   break;
//         case 1:
//           context.go('/${BottomNavName.createPost}');
//           break;
//         case 2:
//           context.go('/${BottomNavName.notifications}');
//           break;
//         case 3:
//           context.go('/${BottomNavName.profile}');
//           break;
//         default:
//       }
//     }

//     final theme = Theme.of(context);
//     final position = ref.watch(bottomNavProvider);
//     return SlidingClippedNavBar(
//       selectedIndex: position,
//       onButtonPressed: (index) => onTap(index),
//       activeColor: theme.colorScheme.primary,
//       inactiveColor: theme.colorScheme.secondary,
//       // dotIndicatorColor: theme.colorScheme.primary,
//       // borderRadius: 15,
//       // curve: Curves.easeInCubic,
//       backgroundColor: theme.scaffoldBackgroundColor,
//       barItems: [
//         BarItem(icon: Icons.local_fire_department_sharp, title: 'Feeds'),
//         //BarItem(icon: Icons.search_sharp, title: 'Search'),
//         BarItem(icon: Icons.add, title: 'Create Post'),
//         BarItem(
//           icon: Icons.notifications_none_sharp,
//           title: 'Notifications',
//         ),
//         BarItem(icon: Icons.person, title: 'Account|Profile'),
//       ],
//     );
//   }
// }
