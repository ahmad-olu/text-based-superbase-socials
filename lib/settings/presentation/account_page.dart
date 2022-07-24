import 'package:flutter/material.dart';
import 'package:geat/core/core.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountView();
  }
}

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final text = [
      'Edit profile',
      'username Change',
      'Email Change',
      'Profile design',
      'Password Change',
      'Recommended reading',
      'Social notification',
      'Mention notification',
      'Deactivate account',
      'Delete Account',
    ];
    return Scaffold(
      body: ResponsiveWidget(
        mobile: AccountPageList(text: text),
        tablet: Row(
          children: [
            Expanded(child: AccountPageList(text: text)),
            Expanded(
              child: Container(
                color: Colors.black12,
              ),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(child: AccountPageList(text: text)),
            Expanded(
              child: Container(
                color: Colors.black12,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountPageList extends StatelessWidget {
  const AccountPageList({
    super.key,
    required this.text,
  });

  final List<String> text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.8),
      child: ListView.separated(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  text[index],
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
