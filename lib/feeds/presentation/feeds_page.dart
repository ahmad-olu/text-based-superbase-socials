import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/core/core.dart';
import 'package:geat/feeds/presentation/widgets/app_bar_buttons.dart';
import 'package:geat/feeds/presentation/widgets/feeds_list.dart';
import 'package:geat/feeds/presentation/widgets/search_button.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedsView();
  }
}

class FeedsView extends HookWidget {
  const FeedsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _tabTitle = <Widget>[
      const Tab(text: 'All'),
      const Tab(text: 'featured'),
      const Tab(text: 'New'),
      const Tab(text: 'Explore'),
      const Tab(text: 'Others'),
    ];
    final _tabController = useTabController(initialLength: _tabTitle.length);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (ResponsiveWidget.isMobile(context))
                  Container()
                else
                  Expanded(
                    child: FeedsAppBarFlatButton(
                      text: 'Geat',
                      style: theme.textTheme.headline1,
                    ),
                  ),
                const Expanded(
                  child: FittedBox(
                    child: Text('Todays Date and Time'),
                  ),
                ),
                Expanded(
                  flex: ResponsiveWidget.isMobile(context) ? 2 : 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FeedsAppBarFlatButton(
                        text: 'Walk-Out',
                        style: theme.textTheme.headline3,
                      ),
                      const SizedBox(width: 5),
                      FeedsAppBarFlatButton(
                        text: 'Menu',
                        style: theme.textTheme.headline3,
                        icon: Icons.menu,
                      ),
                      const SizedBox(width: 5),
                      SearchButtonFeeds(theme: theme),
                    ],
                  ),
                ),
              ],
            ),
            //pinned: true,
            floating: true,
            snap: true,
            backgroundColor: theme.scaffoldBackgroundColor,
          ),
          //const Divider()
          FeedsListTab(tabController: _tabController, tabTitle: _tabTitle),
          FeedsList(tabController: _tabController)
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'floating-action-btn-1',
            onPressed: () {},
            //backgroundColor: Colors.trans,
            child: const Icon(Icons.abc),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'floating-action-btn-2',
            onPressed: () {},
            //backgroundColor: Colors.transparent,
            child: const Icon(Icons.image),
          ),
        ],
      ),
    );
  }
}
