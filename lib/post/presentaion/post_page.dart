import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:geat/core/routes/app_router.gr.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostView();
  }
}

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: const Center(
        child: Text('Post'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 73),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'floating-action-btn-1',
              onPressed: () => context.router.push(const TextPostRoute()),
              backgroundColor:
                  theme.colorScheme.secondary.withOpacity(0.5).withAlpha(100),
              hoverColor: theme.colorScheme.secondary.withOpacity(0.5),
              child: const Icon(Icons.abc),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              heroTag: 'floating-action-btn-2',
              onPressed: () => context.router.push(const ComicPostRoute()),
              backgroundColor:
                  theme.colorScheme.secondary.withOpacity(0.5).withAlpha(100),
              hoverColor: theme.colorScheme.secondary.withOpacity(0.5),
              child: const Icon(Icons.image),
            ),
          ],
        ),
      ),
    );
  }
}
