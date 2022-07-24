import 'package:flutter/material.dart';
import 'package:geat/core/core.dart';
import 'package:geat/feeds/presentation/widgets/book_information.dart';
import 'package:geat/feeds/presentation/widgets/readers_page.dart';

class FeedsDetailsPage extends StatelessWidget {
  const FeedsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedsDetailsView();
  }
}

class FeedsDetailsView extends StatelessWidget {
  const FeedsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookInfo(
                title: DummyLoremText.text1,
                subText: DummyLoremText.text1_5,
              ),
              Image.asset('assets/images/night building.jpeg', height: 200),
              SizedBox(
                height: 450,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 12),
                  child: ListView.separated(
                    itemCount: DummyLoremText.textList.length + 1,
                    separatorBuilder: (context, index) {
                      return const Divider(height: 8);
                    },
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return ListTile(
                          title: Text(
                            'Original',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          subtitle: Text(
                            'Other author',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          leading: const Icon(Icons.fire_hydrant),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => BooksDetailsPage(
                                  title: 'Original',
                                  subtitle: 'Original',
                                  description: DummyLoremText.text2,
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return ListTile(
                          title: Text(
                            'Other author',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          subtitle: Text(
                            'rewrite ${index - 1 + 1}',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => BooksDetailsPage(
                                  title: 'Other author ${index - 1 + 1}',
                                  subtitle: 'rewrite',
                                  description:
                                      DummyLoremText.textList[index - 1],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
