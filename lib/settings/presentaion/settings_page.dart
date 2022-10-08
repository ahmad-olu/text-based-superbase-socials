import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/application/theme_bloc/theme_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/theme/themes.dart';
import 'package:geat/core/utilities/available_soon_dialog.dart';
import 'package:geat/core/utilities/log_out_dialog.dart';
import 'package:geat/core/utilities/settings_pop_over.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:popover/popover.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

final text = [
  'Theme',
  'Customize your Interest',
  'Notification',
  'Stats',
  'Account',
  'Help',
  'Guidelines',
  'delete Account',
  'Walk out',
];

class SettingsView extends HookWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.3),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SettingsList(
                text: text[0],
                subText: const ['Original', 'Dark'],
                child: const ShowThemeCard(),
              ),
              const Divider(thickness: 0.8),
              ShowSingleListCard(
                text: text[1],
                subText: const ['Coming soon'],
                func: () => showAvailableSoonDialog(context),
              ),
              const Divider(thickness: 0.8),
              ShowSingleListCard(
                text: text[2],
                subText: const ['Coming soon'],
                func: () => showAvailableSoonDialog(context),
              ),
              const Divider(thickness: 0.8),
              ShowSingleListCard(
                text: text[3],
                subText: const ['Coming soon'],
                func: () => showAvailableSoonDialog(context),
              ),
              const Divider(thickness: 0.8),
              SettingsList(
                text: text[4],
                subText: const [
                  'Change Username',
                  'Change Email',
                  'Change Details'
                ],
              ),
              const Divider(thickness: 0.8),
              ShowSingleListCard(
                text: text[5],
                subText: const ['Coming soon'],
                func: () => showAvailableSoonDialog(context),
              ),
              const Divider(thickness: 0.8),
              SettingsList(
                text: text[6],
                subText: const [
                  'Terms of service',
                  'Private policy',
                  'Community Guidelines',
                ],
              ),
              const Divider(thickness: 0.8),
              SettingsList(
                text: text[7],
              ),
              const Divider(thickness: 0.8),
              ShowSingleListCard(
                text: text[8],
                func: () async {
                  final shouldLogOut = await showLogOutDialog(context);
                  if (shouldLogOut) {
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
                    context.read<LikedPostCubit>().clearAllLikedPosts();
                  }
                },
              ),
              const Divider(thickness: 0.8),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
    required this.text,
    this.subText = const [],
    this.child = const SizedBox.shrink(),
  });

  final String text;
  final List<String> subText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: SizedBox(
        height: 175,
        width: double.maxFinite,
        child: GestureDetector(
          onTap: () => showSettingsPopOver(
            context: context,
            direction: PopoverDirection.top,
            child: child,
          ),
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                          textBaseline: TextBaseline.ideographic,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  if (subText.isNotEmpty)
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: List.generate(
                        subText.length,
                        (index) => Text(
                          '😏 ${subText[index]} ',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

typedef SingleCardFunction = void Function()?;

class ShowSingleListCard extends StatelessWidget {
  const ShowSingleListCard({
    super.key,
    required this.text,
    this.func,
    this.subText = const [],
  });

  final String text;
  final SingleCardFunction func;
  final List<String> subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: SizedBox(
        height: 175,
        width: double.maxFinite,
        child: GestureDetector(
          onTap: func,
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                          textBaseline: TextBaseline.ideographic,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  if (subText.isNotEmpty)
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: List.generate(
                        subText.length,
                        (index) => Text(
                          '😏 ${subText[index]} ',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry A')),
              ),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry B')),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.amber[300],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowThemeCard extends StatelessWidget {
  const ShowThemeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(AppTheme.values.length, (index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]!.colorScheme.primary,
            shadowColor: appThemeData[itemAppTheme]!.colorScheme.secondary,
            child: SizedBox(
              child: ListTile(
                title: Text(
                  itemAppTheme.toString().substring(9),
                  style: appThemeData[itemAppTheme]
                      ?.textTheme
                      .headline3
                      ?.copyWith(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ThemeEvent.themeChanged(itemAppTheme));
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
