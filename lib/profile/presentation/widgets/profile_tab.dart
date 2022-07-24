import 'package:flutter/material.dart';
import 'package:geat/profile/presentation/widgets/boks_list.dart';

class ProfileListTab extends StatelessWidget {
  const ProfileListTab({
    Key? key,
    required this.tabController,
    required this.tabTitle,
  }) : super(key: key);

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

class ProfilePostList extends StatelessWidget {
  const ProfilePostList({
    Key? key,
    required this.tabController,
    required this.scrollController,
  }) : super(key: key);

  final TabController tabController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 1,
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(18),
            child: SizedBox(
              height: 575,
              child: TabBarView(
                controller: tabController,
                children: [
                  BookGridView(scrollController: scrollController),
                  const BooksListView(),
                  Container(color: Colors.lime),
                  const BooksListView(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
