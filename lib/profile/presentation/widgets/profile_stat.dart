import 'package:flutter/material.dart';
import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';
import 'package:intl/intl.dart';

class ProfileStat extends StatelessWidget {
  const ProfileStat({
    super.key,
    required this.state,
  });
  final ProfileState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: _Stats(
              icon: '🤠 ',
              label: 'Followers',
              count: state.user.followers,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: _Stats(
              icon: '😏 ',
              label: 'Following',
              count: state.user.following,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: _Stats(
              icon: '🤫 ',
              label: 'Post',
              count: state.textPost.length + state.picturePost.length,
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(
            height: 40,
            child: _Stats(
              icon: '😜 ',
              label: 'Re-Imagined',
              count: 5999,
            ),
          ),
        ),
      ],
    );
  }
}

class _Stats extends StatelessWidget {
  const _Stats({
    required this.count,
    required this.label,
    required this.icon,
  });

  final int count;
  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final formattedNumber = NumberFormat.compact().format(count);
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          icon,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 22),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                textAlign: TextAlign.center,
                label,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                textAlign: TextAlign.center,
                formattedNumber,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
