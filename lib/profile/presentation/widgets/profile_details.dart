import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({
    Key? key,
    required this.context,
  }) : super(key: key);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154.5,
      child: Row(
        children: [
          const Expanded(
            flex: 5,
            child: UserProfileDetails(
              fullname: 'Ahmad Olukotun',
              username: 'lazyKing',
              bio: 'asdfgfhg',
              location: 'Lagos, Nigeria',
              email: 'LazyKind@blablabla.com',
              website: 'joeel.com',
              joined: 'tue-wed',
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.settings),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserProfileDetails extends StatelessWidget {
  const UserProfileDetails({
    Key? key,
    required this.fullname,
    required this.username,
    required this.bio,
    required this.location,
    required this.email,
    required this.website,
    required this.joined,
  }) : super(key: key);
  final String fullname;
  final String username;
  final String bio;
  final String location;
  final String email;
  final String website;
  final String joined;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fullname,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 2.0),
          Row(
            children: [
              Expanded(
                child: Text(
                  '@$username',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    Text(
                      'joined $joined',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 2.0),
          Text(
            email,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 2.0),
          Text(
            bio,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 2.0),
          Row(
            children: [
              Expanded(
                child: Text(
                  website,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    const Icon(Icons.location_on),
                    Text(
                      location,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 5.0),
                  ],
                ),
              )
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
