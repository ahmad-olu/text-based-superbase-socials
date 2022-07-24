import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BooksDetailsPage extends StatelessWidget {
  const BooksDetailsPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    late final wordList = description.split(" ").toList();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scrollbar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      //Todo!: add a row with access to different chapter here
                      //alignment: Alignment.center,
                      color: Colors.blue,
                      width: 77,
                      height: 7,
                    ),
                  ),

                  Text(
                    title,
                    style: theme.textTheme.headline1,
                  ),
                  Divider(
                    color: theme.colorScheme.primary,
                    endIndent: 240,
                  ),
                  Text(
                    subtitle,
                    style: theme.textTheme.headline2,
                  ),
                  Divider(
                    color: theme.colorScheme.primary,
                    endIndent: 140,
                  ),
                  // Text(
                  //   description,
                  //   style: Theme.of(context).textTheme.headline2,
                  // ),
                  for (int i = 0; i < wordList.length; i += 300)
                    Padding(
                      padding: const EdgeInsets.all(29),
                      child: Column(
                        children: [
                          () {
                            final texts = wordList
                                .sublist(
                                  i,
                                  i + 300 > wordList.length
                                      ? wordList.length
                                      : i + 300,
                                )
                                .toString();
                            return Text(
                              texts.substring(1, texts.length - 1),
                              style: theme.textTheme.headline2,
                            );
                          }(),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Text(
                              'page ${(i / 300 + 1).toInt()}',
                              style: theme.textTheme.headline3,
                            ),
                          ),
                          Divider(
                            color: theme.colorScheme.primary,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TransferText extends StatelessWidget {
  const TransferText({Key? key, required this.markDown}) : super(key: key);
  final String markDown;

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Center(
        child: Markdown(
          data: markDown,
          controller: controller,
        ),
      ),
    );
  }
}
