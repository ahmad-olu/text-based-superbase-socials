import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfileSavedGrid extends StatelessWidget {
  const ProfileSavedGrid(this.scrollController, {super.key});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridView.builder(
      controller: scrollController,
      itemCount: 25,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.5,
        //repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: const BorderRadius.all(Radius.circular(8.2)),
                ),
                child: Card(
                  color: theme.primaryColor,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/blue ocean.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        right: 2,
                        child: Container(
                          height: 120,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              children: const [
                                Expanded(child: Icon(Icons.comment_outlined)),
                                Divider(thickness: 4),
                                //SizedBox(height: 10),
                                Expanded(
                                    child:
                                        Icon(Icons.favorite_border_outlined)),
                                Divider(thickness: 4),
                                //SizedBox(height: 10),
                                Expanded(child: Icon(Icons.arrow_downward)),
                              ],
                            )
                                .animate(
                                  onPlay: (controller) =>
                                      controller.repeat(reverse: true),
                                )
                                //.scaleXY(begin: 1, end: 1.5, duration: 1000.ms)
                                .tint(
                                    color: theme.primaryColor,
                                    duration: 1000.ms),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 3),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.2)),
                  side: BorderSide(width: 2, color: Colors.black87)),
              clipBehavior: Clip.hardEdge,
              shadowColor: theme.colorScheme.secondary,
              child: ExpansionTile(
                childrenPadding: const EdgeInsets.all(5).copyWith(top: 0),
                title: const Text(
                  'With Great power comes a greatest responsibility....hope you understand',
                  maxLines: 1,
                  //style: Theme.of(context).textTheme.headlineSmall,
                  style: TextStyle(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
                children: const [
                  Text(
                    'With Great power comes a greatest responsibility....hope you understand',
                    //style: Theme.of(context).textTheme.headlineSmall,
                    style: TextStyle(fontSize: 15),
                    //overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'With Great power comes a greatest responsibility....hope you understand',
                    //style: Theme.of(context).textTheme.headlineSmall,
                    style: TextStyle(fontSize: 15),
                    //overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(8.2)),
            //     ),
            //     height: 35,
            //     child: const Padding(
            //       padding: EdgeInsets.all(2.0),
            //       child: Card(
            //         child: Text(
            //           'With Great power comes a greatest responsibility....hope you understand',
            //           maxLines: 5,
            //           //style: Theme.of(context).textTheme.headlineSmall,
            //           style: TextStyle(fontSize: 15),
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        );
      },
    );
  }
}
