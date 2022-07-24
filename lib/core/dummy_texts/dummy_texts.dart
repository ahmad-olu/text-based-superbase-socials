import 'package:flutter_lorem/flutter_lorem.dart';

class DummyLoremText {
  const DummyLoremText();
  static String get text1 => lorem(paragraphs: 1, words: 4);
  static String get text1_5 => lorem(paragraphs: 1, words: 20);
  static String get text2 => lorem(paragraphs: 9, words: 500);
  static String get text3 => lorem(paragraphs: 10, words: 400);
  static String get text4 => lorem(paragraphs: 8, words: 2000);
  static String get text5 => lorem(paragraphs: 12, words: 300);
  static List<String> get textList => [
        text2,
        text3,
        text4,
        text5,
      ];
}
