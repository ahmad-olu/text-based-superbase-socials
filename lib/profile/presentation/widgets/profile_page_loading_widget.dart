import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileLoadingWidget extends StatelessWidget {
  const ProfileLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 320,
                  child: Shimmer.fromColors(
                    baseColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    highlightColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 316,
                        width: double.infinity,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Shimmer.fromColors(
                    baseColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    highlightColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.2),
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 3,
                      ),
                      itemCount: 40,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 70,
                          width: double.infinity,
                          color: Colors.blueAccent,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
