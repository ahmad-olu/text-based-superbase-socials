import 'package:flutter/material.dart';
import 'package:geat/app/widget/widget.dart';

class FeedDetailsPage extends StatelessWidget {
  const FeedDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Name of Post'),
        //backgroundColor: theme.colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              child: ListTile(
                title: Text(
                  '-----> ReImagine this book',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                trailing: const Icon(Icons.arrow_right, size: 35),
                onTap: () {},
                style: ListTileStyle.drawer,
              ),
            ),
            Divider(color: theme.colorScheme.secondary),
            Card(
              child: ListTile(
                title: Text(
                  'Post title',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subtitle: Text(
                  'By ==> author username',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                trailing: const Icon(Icons.arrow_forward),
                leading: const Icon(Icons.fire_hydrant),
                onTap: () {},
                style: ListTileStyle.drawer,
              ),
            ),
            Divider(color: theme.colorScheme.secondary),
            SizedBox(
              height: 400,
              child: ListView.separated(
                itemCount: 7,
                itemBuilder: (context, index) {
                  // final reImaginedPosts = state.reImagined[index];
                  // final reImaginedAuthor =
                  //     reImaginedPosts!.author as User;
                  // final date =
                  //     reImaginedPosts.date ?? DateTime.now();
                  return ListTile(
                    leading: const UserProfileImageWidget(
                      radius: 22.0,
                      profileImageUrl: '',
                    ),
                    title: Text(
                      'Re imagined author username',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontSize: 24.7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'rewrite ${index - 1 + 1} ==>',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          'Date Created',
                          style: theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {},
                  );
                },
                separatorBuilder: (context, index) => const Divider(height: 8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
