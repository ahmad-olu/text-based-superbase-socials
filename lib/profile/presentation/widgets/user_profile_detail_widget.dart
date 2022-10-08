import 'package:flutter/material.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:timeago/timeago.dart' as timeAgo;

class UserProfileDetailsWidget extends StatelessWidget {
  const UserProfileDetailsWidget({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    final date = user.dateJoined == null
        ? ''
        : timeAgo.format(user.dateJoined as DateTime);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.fullName ?? '',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 2.0),
          Row(
            children: [
              Expanded(
                child: Text(
                  '@${user.username}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    Text(
                      'Joined $date',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            user.email,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          if (user.bio != null)
            Text(
              user.bio ?? '',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          if (user.location != null || user.website != null)
            Row(
              children: [
                if (user.website != null)
                  Expanded(
                    child: Text(
                      user.website ?? '',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                //todo?? make the website clickable and link it to a website
                if (user.location != null)
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        //Icon(location == null ? null : Icons.location_on),
                        Text(
                          user.location ?? '',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(height: 5.0),
                      ],
                    ),
                  )
              ],
            ),
        ],
      ),
    );
  }
}
