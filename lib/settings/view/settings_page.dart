import 'dart:developer';

import 'package:geat/app/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/provider/provider.dart';
import 'package:geat/app/theme/theme.dart';
import 'package:geat/app/utilities/utility.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final themeProviderR = ref.read(appThemeProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            // ExpandableSettingsCard(
            //   title: 'Theme',
            //   onTap: () {},
            //   children: [
            //     Wrap(
            //       children: List.generate(AppTheme.values.length, (index) {
            //         final appThemeItem = AppTheme.values[index];
            //         return SettingChildrenButton(
            //           title: appThemeItem.toString().substring(9),
            //           borderColor: appThemeData[appThemeItem]!.primaryColor,
            //           style: appThemeData[appThemeItem]
            //               ?.textTheme
            //               .displaySmall
            //               ?.copyWith(
            //                   fontWeight: FontWeight.w500,
            //                   color: appThemeData[appThemeItem]!.primaryColor),
            //           onPressed: () =>
            //               themeProviderR.themeChanged(appThemeItem),
            //         );
            //       }),
            //     )
            //   ],
            // ),
            ExpandableSettingsCard(
              title: 'Account',
              onTap: () {},
              children: [
                Wrap(
                  children: [
                    SettingChildrenButton(
                      title: 'Change Username',
                      onPressed: () => AutoRouter.of(context)
                          .push(const UsernameUpdateRoute()),
                    ),
                    SettingChildrenButton(
                      title: 'Change E-Mail',
                      onPressed: () =>
                          AutoRouter.of(context).push(const EmailUpdateRoute()),
                    ),
                    SettingChildrenButton(
                      title: 'Change Password',
                      onPressed: () => AutoRouter.of(context)
                          .push(const PasswordUpdateRoute()),
                    ),
                    SettingChildrenButton(
                      title: 'Change Others',
                      onPressed: () =>
                          AutoRouter.of(context).push(const OtherUpdateRoute()),
                    ),
                  ],
                )
              ],
            ),
            SettingsCard(
                title: 'Interest',
                onTap: () async {
                  final shouldLogOut = await showAvailableSoonDialog(context);
                  if (shouldLogOut) {
                    log('Available soon');
                  }
                }),
            SettingsCard(
              title: 'FeedBack',
              onTap: () =>
                  AutoRouter.of(context).push(const CreateFeedBackRoute()),
            ),
            SettingsCard(
                title: 'FAQ',
                onTap: () async {
                  final shouldLogOut = await showAvailableSoonDialog(context);
                  if (shouldLogOut) {
                    log('Available soon');
                  }
                }),

            SettingsCard(
                title: 'Help',
                onTap: () async {
                  final shouldLogOut = await showAvailableSoonDialog(context);
                  if (shouldLogOut) {
                    log('Available soon');
                  }
                }),
            SettingsCard(
                title: 'Guidelines',
                onTap: () async {
                  final shouldLogOut = await showAvailableSoonDialog(context);
                  if (shouldLogOut) {
                    log('Available soon');
                  }
                }),
            SettingsCard(
                title: 'delete Account',
                onTap: () async {
                  final shouldLogOut = await showAvailableSoonDialog(context);
                  if (shouldLogOut) {
                    log('Available soon');
                  }
                }),
            SettingsCard(
                title: 'Walk out',
                onTap: () async {
                  final shouldLogOut = await showLogOutDialog(context);
                  if (shouldLogOut) {
                    log('Sign out');
                  }
                }),
          ],
        ),
      )),
    );
  }
}

class SettingChildrenButton extends StatelessWidget {
  const SettingChildrenButton({
    super.key,
    required this.title,
    this.onPressed,
    this.style,
    this.borderColor,
  });
  final String title;
  final SingleCardFunction onPressed;
  final TextStyle? style;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? theme.colorScheme.secondary,
          ),
          minimumSize: const Size(80, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: FittedBox(
          child: Text(
            title,
            style: style ??
                theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

typedef SingleCardFunction = void Function()?;

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    this.onTap,
    required this.title,
  });
  final SingleCardFunction onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: SizedBox(
        height: 175,
        width: double.maxFinite,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                          textBaseline: TextBaseline.ideographic,
                        ),
                    textAlign: TextAlign.center,
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

class ExpandableSettingsCard extends StatelessWidget {
  const ExpandableSettingsCard({
    super.key,
    this.onTap,
    required this.title,
    this.children = const <Widget>[],
    this.height = 175,
  });
  final SingleCardFunction onTap;
  final String title;
  final List<Widget> children;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: SizedBox(
        height: height,
        width: double.maxFinite,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExpansionTile(
                    title: Text(
                      title,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 50,
                                textBaseline: TextBaseline.ideographic,
                              ),
                      textAlign: TextAlign.center,
                    ),
                    children: children,
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
