import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';
import 'package:geat/search/application/search_cubit/search_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(context.read<UserRepository>()),
      child: const SearchView(),
    );
  }
}

class SearchView extends HookWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextController = useTextEditingController(text: '');
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.colorScheme.primary.withOpacity(0.4),
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
                    strokeAlign: StrokeAlign.outside,
                  ),
                ),
                hintText: 'Search Users',
                suffixIcon: IconButton(
                  onPressed: () {
                    context.read<SearchCubit>().clearSearch();
                    searchTextController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
              textInputAction: TextInputAction.search,
              textAlignVertical: TextAlignVertical.center,
              onSubmitted: (value) {
                if (value.trim().isNotEmpty) {
                  context.read<SearchCubit>().searchUsers(value.trim());
                }
              },
            ),
          ),
        ),
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            switch (state.status) {
              case SearchStatus.error:
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'an Error Occurred',
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              case SearchStatus.loading:
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                );
              case SearchStatus.loaded:
                return state.user.isNotEmpty
                    ? ListView.builder(
                        itemCount: state.user.length,
                        itemBuilder: (context, index) {
                          final user = state.user[index];
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                child: Card(
                                  color: theme.scaffoldBackgroundColor,
                                  shadowColor: theme.colorScheme.primary,
                                  child: ListTile(
                                    leading: UserProfileImageWidget(
                                      radius: 22.0,
                                      profileImageUrl:
                                          user.profileImageUrl ?? '',
                                    ),
                                    title: Text(
                                      user.username,
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    subtitle: user.fullName != null
                                        ? Text(
                                            user.fullName!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                          )
                                        : const SizedBox.shrink(),
                                    onTap: () => context.router.push(
                                      ProfileRoute(userId: user.id),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.4),
                              ),
                            ],
                          );
                        },
                      )
                    : const SizedBox.shrink(
                        child: Text('No User Found'),
                      );

              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
