import 'package:flutter/material.dart';
import 'package:geat/core/core.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<void Function()?> onTap = [
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
    ];
    final text = [
      'Theme',
      'Customize your Interest',
      'Notification',
      'Stats',
      'Account',
      'Help',
      'Terms of service',
      'Private policy',
      'Community Guidelines',
      'delete Acount',
      'Walk out',
    ];
    const icons = [
      Icon(Icons.color_lens_outlined),
      Icon(Icons.exit_to_app),
      Icon(Icons.alarm_add_outlined),
      Icon(Icons.stacked_bar_chart_outlined),
      Icon(Icons.account_tree_outlined),
      Icon(Icons.help),
      Icon(Icons.exit_to_app),
      Icon(Icons.policy_outlined),
      Icon(Icons.exit_to_app),
      Icon(Icons.delete_forever),
      Icon(Icons.exit_to_app),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          'Settings',
          style: theme.textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: ResponsiveWidget(
        mobile: SettingsList(
          text: text,
          theme: theme,
          icons: icons,
          onTap: onTap,
        ),
        tablet: Row(
          children: [
            Expanded(
              child: Card(
                child: SettingsList(
                  text: text,
                  theme: theme,
                  icons: icons,
                  onTap: onTap,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              child: Card(
                child: SettingsList(
                  text: text,
                  theme: theme,
                  icons: icons,
                  onTap: onTap,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({
    super.key,
    required this.text,
    required this.theme,
    required this.icons,
    required this.onTap,
  });

  final List<String> text;
  final ThemeData theme;
  final List<Icon> icons;
  final List<void Function()?> onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.4),
      child: ListView.separated(
        itemCount: text.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              text[index],
              style: theme.textTheme.headline3,
            ),
            leading: icons[index],
            trailing: !ResponsiveWidget.isMobile(context)
                ? null
                : const Icon(Icons.arrow_forward_ios_outlined),
            onTap: onTap[index],
          );
        },
        separatorBuilder: (context, index) {
          if (index >= 3 && index <= 7) {
            return Divider(
              color: Theme.of(context).colorScheme.secondary,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            );
          } else {
            return const Divider(
              indent: 20,
              endIndent: 20,
            );
          }
        },
      ),
    );
  }
}
