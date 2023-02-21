import 'package:flutter/material.dart';

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error),
      ),
    );
  }
}
