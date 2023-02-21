import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:geat/app/constants/constants.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:go_router/go_router.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.17,
        child: ParallaxRain(
          dropColors: [
            Colors.red,
            Colors.green,
            Colors.blue,
            Colors.yellow,
            Colors.brown,
            Colors.blueGrey,
            theme.scaffoldBackgroundColor,
            theme.primaryColor,
            theme.colorScheme.secondary,
          ],
          dropFallSpeed: 6,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => AutoRouter.of(context)
                        .push(const CreateTextPostRoute()),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(150, 100),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          side: BorderSide(width: 2, color: Colors.black87)),
                    ),
                    child: Text(
                      'Book',
                      style: theme.textTheme.headlineMedium,
                    ),
                  )
                      .animate(
                        onPlay: (controller) =>
                            controller.repeat(reverse: true),
                      )
                      .tint(color: theme.colorScheme.primary, duration: 1000.ms)
                      .scaleXY(end: 1.2, duration: 2000.ms),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () => AutoRouter.of(context)
                        .push(const CreateImagePostRoute()),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(150, 100),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          side: BorderSide(width: 2, color: Colors.black87)),
                    ),
                    child: Text(
                      'Comic',
                      style: theme.textTheme.headlineMedium,
                    ),
                  )
                      .animate(
                        onPlay: (controller) =>
                            controller.repeat(reverse: true),
                      )
                      .tint(color: theme.colorScheme.primary, duration: 1000.ms)
                      .scaleXY(end: 1.2, duration: 2000.ms),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
