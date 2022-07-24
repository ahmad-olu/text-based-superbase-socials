import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/core/core.dart';

class ThemeSelectionPage extends StatelessWidget {
  const ThemeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThemeSelectionView();
  }
}

class ThemeSelectionView extends StatelessWidget {
  const ThemeSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'select theme',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]!.colorScheme.primary,
            child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                style: appThemeData[itemAppTheme]!.textTheme.bodyMedium,
              ),
              onTap: () {
                BlocProvider.of<ThemeBloc>(context)
                    .add(ThemeEvent.themeChanged(itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}
