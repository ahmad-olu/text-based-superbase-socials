import 'package:flutter/material.dart';
import 'package:geat/core/themes/themes.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.title,
    required this.subText,
  });
  final String title;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          subText,
                          maxLines: 5,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      const BookRating()
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: kShadowColor,
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            size: 15,
          ),
          const SizedBox(height: 5),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '4.9',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
    );
  }
}
