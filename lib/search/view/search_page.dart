import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/widget/widget.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final searchTextController = useTextEditingController(text: '');
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.colorScheme.primary,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 38),
            child: TextField(
              controller: searchTextController,
              decoration: InputDecoration(
                fillColor: theme.scaffoldBackgroundColor.withOpacity(0.8),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    width: 55,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                ),
                hintText: 'Search',
                suffixIcon: IconButton(
                  onPressed: () {
                    // context.read<SearchCubit>().clearSearch();
                    // searchTextController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
              textInputAction: TextInputAction.search,
              textAlignVertical: TextAlignVertical.center,
              onSubmitted: (value) {
                // if (value.trim().isNotEmpty) {
                //   context.read<SearchCubit>().searchUsers(value.trim());
                // }
              },
            ),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height / 1.2,
          child: ListView.builder(
            itemCount: 16,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Card(
                      color: theme.scaffoldBackgroundColor,
                      shadowColor: theme.colorScheme.primary,
                      child: ListTile(
                        leading: const UserProfileImageWidget(
                          radius: 22.0,
                          profileImageUrl: '',
                        ),
                        style: ListTileStyle.drawer,
                        title: Text(
                          'Braxton',
                          style: theme.textTheme.headlineSmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          'jon doe',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Divider(
                    color: theme.colorScheme.primary,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
