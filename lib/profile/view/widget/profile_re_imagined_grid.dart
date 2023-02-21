import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfileReImaginedGrid extends StatelessWidget {
  const ProfileReImaginedGrid(this.scrollController, {super.key});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      controller: scrollController,
      itemCount: 25,
      itemBuilder: (context, index) {
        return const Card(
          child: ListTile(
            title: Text('Re-Imagined'),
            subtitle: Text('---------------'),
          ),
        );
      },
    );
  }
}
