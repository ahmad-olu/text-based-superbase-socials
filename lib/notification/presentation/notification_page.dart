import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotificationView();
  }
}

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.5),
        child: ListView.separated(
          itemCount: 15,
          separatorBuilder: (context, index) {
            return const Divider(height: 8);
          },
          itemBuilder: (context, index) {
            return TimelineTile(
              alignment: TimelineAlign.manual,
              indicatorStyle: IndicatorStyle(
                //height: 33,
                padding: const EdgeInsets.all(3),
                width: 35,
                iconStyle: IconStyle(
                  iconData: Icons.library_add,
                ),
              ),
              lineXY: 0.3,
              endChild: Container(
                constraints: const BoxConstraints(minHeight: 120),
                color: Colors.amber,
              ),
              startChild: Container(
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
