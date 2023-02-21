import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/app.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:timeline_tile/timeline_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.1,
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) {
            // final notification = state.notifications[index];
            // final author = notification!.fromUser as User;
            // final date = notification.date ?? DateTime.now();
            return TimelineTile(
              alignment: TimelineAlign.manual,
              afterLineStyle: const LineStyle(color: Colors.amber),
              beforeLineStyle: const LineStyle(color: Colors.cyanAccent),
              indicatorStyle: const IndicatorStyle(
                height: 2,
                padding: EdgeInsets.all(3),
                color: Colors.green,
              ),
              lineXY: 0.1,
              endChild: const Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.2)),
                    side: BorderSide(width: 2, color: Colors.black87)),
                shadowColor: Colors.purple,
                child: ListTile(
                  title: Text('Username'),
                  subtitle: Text('april 20001 6'),
                ),
              ),
              startChild: GestureDetector(
                onTap: () => AutoRouter.of(context).push(const ProfileRoute()),
                child: const Icon(Icons.favorite_outline_sharp),
              ),
            );
          },
        ),
      ),
    );
  }
}
