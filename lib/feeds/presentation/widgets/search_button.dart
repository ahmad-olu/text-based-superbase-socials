import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:geat/core/core.dart';

class SearchButtonFeeds extends StatelessWidget {
  const SearchButtonFeeds({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ResponsiveWidget.isMobileDevice
            ? showSearch(
                context: context,
                delegate: MySearchDelegate(),
              )
            : showFlash(
                context: context,
                onWillPop: () async => true,
                builder: (context, controller) {
                  return Flash.dialog(
                    controller: controller,
                    borderWidth: 5,
                    barrierBlur: 2.4,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    borderColor: theme.colorScheme.secondary,
                    margin: const EdgeInsets.all(8),
                    child: FlashBar(
                      title: Text(
                        'Search',
                        style: theme.textTheme.headline2,
                      ),
                      content: Container(
                        padding: const EdgeInsets.all(14),
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => controller.dismiss(),
                          child: const Text('dismiss'),
                        )
                      ],
                    ),
                  );
                },
              );
      },
      icon: const Icon(Icons.search_rounded),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'indo',
    'colora',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
