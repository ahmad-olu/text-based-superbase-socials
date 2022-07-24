import 'package:flutter/material.dart';
import 'package:geat/feeds/presentation/widgets/book_information.dart';

class BookGridView extends StatelessWidget {
  const BookGridView({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      padding: const EdgeInsets.all(4),
      controller: scrollController,
      itemCount: 150,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(4),
          child: GridTile(
            header: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(2.0),
              child: const Text(
                'Wild right',
                textAlign: TextAlign.center,
              ),
            ),
            footer: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(2.0),
              child: const Text(
                'Yes the footer',
                textAlign: TextAlign.center,
              ),
            ),
            child: Image.asset(
              'assets/images/night building.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

class BooksListView extends StatelessWidget {
  const BooksListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                height: 50,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '@ahamd',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Text(
                          'Re-write => 5',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                    FittedBox(
                      child: Text(
                        'The Bridal request',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 35,
              child: BookRating(),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 2),
                child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/images/night building.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
