import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:geat/feeds/feeds.dart';
import 'package:geat/feeds/presentation/widgets/book_information.dart';

class BookGrid extends StatelessWidget {
  const BookGrid({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 40,
        //crossAxisSpacing: 0,
        //repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: const [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(2, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => GridTileWidget(index: index, title: title),
      ),
    );
  }
}

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/night building.jpeg',
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                right: 5,
                left: 5,
                child: Container(
                  height: 26,
                  width: 80,
                  color: Colors.white70,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Read',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Positioned(
                left: 3,
                bottom: 2,
                height: 140,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 33,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_downward_outlined),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const BookRating(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: FittedBox(
            fit: BoxFit.fill,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title \n",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextSpan(
                    text: "Ahmad olukotun",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
