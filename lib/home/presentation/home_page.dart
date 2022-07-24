import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/widgets/widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // appBarBuilder: (_, tabsRouter) => AppBar(
      //   backgroundColor: Colors.indigo,
      //   title: const Text('Geat'),
      //   centerTitle: true,
      //   leading: const AutoLeadingButton(),
      // ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      primary: false,
      routes: const [
        FeedsRouter(),
        NotificationRoute(),
        ProfileRouter(),
      ],
      drawer: const HomeDrawer(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.local_fire_department_sharp,
                size: 30,
              ),
              title: const Text('Feeds'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.notifications_none_sharp,
                size: 30,
              ),
              title: const Text('Notification'),
            ),
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text('Profile'),
            ),
          ],
        );
      },
    );
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            GlobalSizedBox(sizedBoxSize: SizedBoxSize.large),
            ListTile(
              leading: Icon(
                Icons.local_fire_department_sharp,
                size: 30,
              ),
              title: Text('Feeds'),
            ),
            GlobalSizedBox(sizedBoxSize: SizedBoxSize.large),
            ListTile(
              leading: Icon(
                Icons.notifications_none_sharp,
                size: 30,
              ),
              title: Text('Notification'),
            ),
            GlobalSizedBox(sizedBoxSize: SizedBoxSize.large),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text('Profile'),
            )
          ],
        ),
      ),
    );
  }
}
