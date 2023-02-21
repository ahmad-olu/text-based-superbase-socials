import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/widget/widget.dart';

class ProfilePageUserDetails extends StatelessWidget {
  const ProfilePageUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '@ Arabjay01',
                style: theme.textTheme.headlineMedium,
              ),
              IconButton(
                onPressed: () =>
                    AutoRouter.of(context).push(const SettingsRoute()),
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
        ),
        Divider(
          color: theme.colorScheme.secondary,
          thickness: 2,
          endIndent: 200,
        )
            .animate(
              onPlay: (controller) => controller.repeat(),
            )
            .shimmer(color: theme.primaryColor, duration: 1000.ms),
        Divider(
          color: theme.colorScheme.secondary,
          thickness: 2,
          endIndent: 180,
        )
            .animate(
              onPlay: (controller) => controller.repeat(),
            )
            .shimmer(color: theme.primaryColor, duration: 1000.ms),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.8,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      side: BorderSide(width: 2, color: Colors.black87)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Full name'),
                              const Text('E-mail'),
                              const Text('website'),
                              const Text('Joined april 2009'),
                              const Divider(),
                              ExpansionTile(
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                title: const Text('Bio'),
                              ),
                              const SizedBox(height: 2),
                              TextButton(
                                  style: TextButton.styleFrom(
                                    shape: const RoundedRectangleBorder(),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: const [
                                      Icon(Icons.add),
                                      SizedBox(width: 5),
                                      Text('follow')
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: UserProfileImageWidget(
                            radius: 50,
                            profileImageUrl: '',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          side: BorderSide(width: 2, color: Colors.black87)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('72k',
                              style: theme.textTheme.headlineMedium,
                              textAlign: TextAlign.center),
                          const Text('Following', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          side: BorderSide(width: 2, color: Colors.black87)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('72k',
                              style: theme.textTheme.headlineMedium,
                              textAlign: TextAlign.center),
                          const Text('Follower', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        )
      ],
    );
  }
}
