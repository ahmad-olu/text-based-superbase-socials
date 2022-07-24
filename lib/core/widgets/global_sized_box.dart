import 'package:flutter/material.dart';

enum SizedBoxSize { small, medium, large }

class GlobalSizedBox extends StatelessWidget {
  const GlobalSizedBox({
    Key? key,
    this.sizedBoxSize = SizedBoxSize.small,
  }) : super(key: key);
  final SizedBoxSize sizedBoxSize;

  @override
  Widget build(BuildContext context) {
    double _size(SizedBoxSize sizedBoxSize) {
      if (sizedBoxSize == SizedBoxSize.large) {
        return 32.0;
      } else if (sizedBoxSize == SizedBoxSize.medium) {
        return 22.0;
      } else if (sizedBoxSize == SizedBoxSize.small) {
        return 12.0;
      }
      return 11;
    }

    return SizedBox(
      height: _size(sizedBoxSize),
    );
  }
}
