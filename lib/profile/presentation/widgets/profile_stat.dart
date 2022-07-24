import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileStat extends StatelessWidget {
  const ProfileStat({
    Key? key,
    required this.firstLabel,
    required this.firstCount,
    required this.secondLabel,
    required this.secondCount,
  }) : super(key: key);
  final String firstLabel;
  final int firstCount;
  final String secondLabel;
  final int secondCount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 40,
              child: _Stats(count: firstCount, label: firstLabel),
            ),
          ),
          const Divider(),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 40,
              child: _Stats(count: secondCount, label: secondLabel),
            ),
          ),
        ],
      ),
    );
  }
}

class _Stats extends StatelessWidget {
  const _Stats({
    Key? key,
    required this.count,
    required this.label,
  }) : super(key: key);

  final int count;
  final String label;

  @override
  Widget build(BuildContext context) {
    final _formatedNumber = NumberFormat.compact().format(count);
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            _formatedNumber,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
