import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/widget/widget.dart';
import 'package:intl/intl.dart';

class CommentPage extends HookWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final commentController = useTextEditingController();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comment',
          style: theme.textTheme.headlineMedium,
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 60),
                itemCount: 15,
                itemBuilder: (context, index) {
                  // final comment = state.comment[index];
                  // final author = comment.author as User;
                  // final date = comment.date ?? DateTime.now();
                  return ListTile(
                      leading: const UserProfileImageWidget(
                        radius: 22.0,
                        profileImageUrl: '',
                      ),
                      title: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'arabJay',
                              style: theme.textTheme.headlineMedium?.copyWith(
                                fontSize: 24.7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(text: ''),
                            TextSpan(
                              text: '---> ${'Only if the spice'}',
                              style: theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        DateFormat.yMd().add_jm().format(
                              DateTime.now(),
                            ),
                        style: theme.textTheme.headlineSmall,
                      ),
                      onTap: () {});
                },
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // if (true) const LinearProgressIndicator(),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: commentController,
                              textCapitalization: TextCapitalization.sentences,
                              maxLines: 3,
                              decoration: const InputDecoration.collapsed(
                                hintText: "You'r Comment here... ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              final content = commentController.text.trim();
                              if (content.isNotEmpty) {
                                // context.read<CommentBloc>().add(
                                //       CommentEvent.postComments(
                                //         content: content,
                                //       ),
                                //     );
                                commentController.clear();
                              }
                            },
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                            ),
                            child: Text(
                              'Post',
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
