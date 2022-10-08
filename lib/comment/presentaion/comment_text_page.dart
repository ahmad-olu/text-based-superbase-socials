import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/comment/application/comment_bloc/comment_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';
import 'package:intl/intl.dart';

class CommentTextPage extends StatelessWidget {
  const CommentTextPage({super.key, required this.textPost});
  final TextPost textPost;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentBloc(
        context.read<PostRepository>(),
        context.read<AuthBloc>(),
      )..add(CommentEvent.fetchTextComments(post: textPost)),
      child: const CommentTextView(),
    );
  }
}

class CommentTextView extends HookWidget {
  const CommentTextView({super.key});

  @override
  Widget build(BuildContext context) {
    final commentController = useTextEditingController();
    final theme = Theme.of(context);
    return BlocConsumer<CommentBloc, CommentState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Comment',
              style: theme.textTheme.headline3,
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
                    itemCount: state.comment.length,
                    itemBuilder: (context, index) {
                      final comment = state.comment[index];
                      final author = comment.author as User;
                      final date = comment.date ?? DateTime.now();
                      return ListTile(
                        leading: UserProfileImageWidget(
                          radius: 22.0,
                          profileImageUrl: author.profileImageUrl ?? '',
                        ),
                        title: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: author.username,
                                style: theme.textTheme.headline2?.copyWith(
                                  fontSize: 24.7,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const TextSpan(text: ''),
                              TextSpan(
                                text: '---> ${comment.content}',
                                style: theme.textTheme.headline5,
                              ),
                            ],
                          ),
                        ),
                        subtitle: Text(
                          DateFormat.yMd().add_jm().format(
                                date as DateTime,
                              ),
                          style: theme.textTheme.headline5,
                        ),
                        onTap: () => context.router.push(
                          ProfileRoute(userId: author.id),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (state.status == CommentStatus.submitting)
                            const LinearProgressIndicator(),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: commentController,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  decoration: const InputDecoration.collapsed(
                                    hintText: "You'r Comment here... ",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  final content = commentController.text.trim();
                                  if (content.isNotEmpty) {
                                    context.read<CommentBloc>().add(
                                          CommentEvent.postTextComments(
                                            content: content,
                                          ),
                                        );
                                    commentController.clear();
                                  }
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                ),
                                child: Text(
                                  'Post',
                                  style: theme.textTheme.headline5,
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
      },
    );
  }
}
