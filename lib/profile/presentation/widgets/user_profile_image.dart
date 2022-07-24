import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UserProfileImageWidget extends StatelessWidget {
  const UserProfileImageWidget({
    Key? key,
    required this.radius,
    required this.profileImageUrl,
    this.profileImage,
  }) : super(key: key);
  final double radius;
  final String profileImageUrl;
  final File? profileImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey[300],
        //backgroundImage: CachedNetworkImageProvider(profileImageUrl),
        child: profileImageUrl.isEmpty
            ? Lottie.asset('assets/json/79638-avatar-icon.json')
            : null,
      ),
    );
  }
}
