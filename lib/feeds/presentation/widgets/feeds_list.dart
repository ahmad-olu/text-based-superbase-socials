import 'package:flutter/material.dart';
import 'package:geat/core/core.dart';
import 'package:geat/feeds/feeds.dart';
import 'package:geat/feeds/presentation/widgets/grid_tile.dart';

class FeedsListTab extends StatelessWidget {
  const FeedsListTab({
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

class FeedsList extends StatelessWidget {
  const FeedsList({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 1,
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(18),
            child: SizedBox(
              height: 745,
              child: TabBarView(
                controller: tabController,
                children: const [
                  FeedsIntroPages(),
                  FeedsIntroPages(),
                  FeedsIntroPages(),
                  FeedsIntroPages(),
                  FeedsIntroPages(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FeedsIntroPages extends StatelessWidget {
  const FeedsIntroPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: BookGrid(title: DummyLoremText.text1),
      tablet: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
      desktop: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
