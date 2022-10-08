import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/post/domain/text_post_model.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';
import 'package:geat/reImagined/application/bloc/re_imagined_bloc.dart';
import 'package:intl/intl.dart';

class TextFeedsDetailsPage extends StatelessWidget {
  const TextFeedsDetailsPage({super.key, required this.posts});
  final TextPost posts;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReImaginedBloc(
        context.read<PostRepository>(),
        context.read<AuthBloc>(),
      )..add(ReImaginedEvent.fetchTextReImagined(post: posts)),
      child: TextFeedsDetailsView(posts: posts),
    );
  }
}

class TextFeedsDetailsView extends StatelessWidget {
  const TextFeedsDetailsView({super.key, required this.posts});
  final TextPost posts;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.4),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.3),
        child: Column(
          children: [
            //Image.network(posts.imageUrl!, height: 200),
            if (!posts.canReImagine)
              SizedBox(
                height: 100,
                child: GestureDetector(
                  onTap: () => context.router.push(
                    ReImaginedRoute(
                      textPost: posts,
                      reImaginedBloc: context.read<ReImaginedBloc>(),
                    ),
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Text(
                            'ReImagine this book',
                            style: theme.textTheme.headline2,
                          ),
                          const Icon(Icons.arrow_right, size: 35),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 500,
              child: BlocConsumer<ReImaginedBloc, ReImaginedState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  final author = posts.author as User;
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          posts.title,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        subtitle: Text(
                          'By ${author.username}',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        trailing: const Icon(Icons.arrow_forward),
                        leading: const Icon(Icons.fire_hydrant),
                        onTap: () => context.router.push(
                          BooksDetailsRoute(
                            posts: posts,
                            isReImaginedAvailable: false,
                          ),
                        ),
                      ),
                      if (state.reImagined.isNotEmpty)
                        SizedBox(
                          height: 400,
                          child: ListView.separated(
                            itemCount: state.reImagined.length,
                            itemBuilder: (context, index) {
                              final reImaginedPosts = state.reImagined[index];
                              final reImaginedAuthor =
                                  reImaginedPosts!.author as User;
                              final date =
                                  reImaginedPosts.date ?? DateTime.now();
                              return ListTile(
                                leading: UserProfileImageWidget(
                                  radius: 22.0,
                                  profileImageUrl:
                                      reImaginedAuthor.profileImageUrl ?? '',
                                ),
                                title: Text(
                                  reImaginedAuthor.username,
                                  style: theme.textTheme.headline2?.copyWith(
                                    fontSize: 24.7,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'rewrite ${index - 1 + 1} ==>',
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    Text(
                                      DateFormat.yMd().add_jm().format(
                                            date as DateTime,
                                          ),
                                      style: theme.textTheme.headline5,
                                    ),
                                  ],
                                ),
                                trailing: const Icon(Icons.arrow_forward),
                                onTap: () => context.router.push(
                                  BooksDetailsRoute(
                                    reImagined: reImaginedPosts.content,
                                    isReImaginedAvailable: true,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const Divider(height: 8),
                          ),
                        ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
