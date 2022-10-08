import 'package:flutter/material.dart';

class ComicDetailsPage extends StatelessWidget {
  const ComicDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComicDetailsView();
  }
}

class ComicDetailsView extends StatelessWidget {
  const ComicDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Comic details page'),
      ),
    );
  }
}
