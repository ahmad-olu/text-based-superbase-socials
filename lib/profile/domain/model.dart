class User {
  final String id;
  final String username;
  final String email;
  final String accountCreated;
  final String website;
  final String location;
  final String bio;
  final String profileImageUrl;
  final int following;
  final int followers;

  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.website,
    required this.bio,
    required this.profileImageUrl,
    required this.following,
    required this.followers,
    required this.accountCreated,
    required this.location,
  });

  static const empty = User(
    id: '',
    username: '',
    email: '',
    website: '',
    bio: '',
    profileImageUrl: '',
    followers: 0,
    following: 0,
    accountCreated: '',
    location: '',
  );

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? accountCreated,
    String? website,
    String? location,
    String? bio,
    String? profileImageUrl,
    int? following,
    int? followers,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      accountCreated: accountCreated ?? this.accountCreated,
      website: website ?? this.website,
      location: location ?? this.location,
      bio: bio ?? this.bio,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      following: following ?? this.following,
      followers: followers ?? this.followers,
    );
  }
}
