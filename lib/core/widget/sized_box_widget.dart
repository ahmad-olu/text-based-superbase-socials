import 'package:flutter/material.dart';
import 'package:geat/core/enum/enum.dart';

class SizedBoxHeightWidget extends StatelessWidget {
  const SizedBoxHeightWidget({super.key, required this.type});
  final SizedBoxType type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height(type),
    );
  }

  double _height(SizedBoxType type) {
    switch (type) {
      case SizedBoxType.small:
        return 8;
      case SizedBoxType.medium:
        return 16;
      case SizedBoxType.large:
        return 28;
    }
  }
}
