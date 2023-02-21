import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// class UserProfileImageWidget extends StatelessWidget {
//   const UserProfileImageWidget({
//     super.key,
//     required this.radius,
//     required this.profileImageUrl,
//     this.profileImage,
//   });
//   final double radius;
//   final String profileImageUrl;
//   final File? profileImage;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: CircleAvatar(
//         radius: radius,
//         backgroundColor: Colors.grey[300],
//         backgroundImage: _backGroundImage(),
//         child: _noProfileIcon(),
//       ),
//     );
//   }

//   ImageProvider<Object>? _backGroundImage() {
//     if (profileImage != null) {
//       return FileImage(profileImage!);
//     } else if (profileImageUrl.isNotEmpty) {
//       return CachedNetworkImageProvider(profileImageUrl);
//     }
//     return null;
//   }

//   Widget? _noProfileIcon() {
//     if (profileImage == null && profileImageUrl.isEmpty) {
//       return Lottie.asset(
//         'assets/json/79638-avatar-icon.json',
//         fit: BoxFit.contain,
//       );
//     }
//     return null;
//   }
// }

class UserProfileImageWidget extends StatelessWidget {
  const UserProfileImageWidget({
    super.key,
    required this.radius,
    required this.profileImageUrl,
    this.profileImage,
  });
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
        child: Lottie.asset(
          'assets/json/79638-avatar-icon.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
