import "package:english_words/english_words.dart";
import "package:flutter/cupertino.dart";

main(List<String> args) {
  base();
}

void base() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
//   遍历数组
  var names = [
    WordPair.random(),
    WordPair.random(),
    WordPair.random(),
    WordPair.random(),
    WordPair.random(),
    WordPair.random(),
    WordPair.random(),
  ];

  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }
  for (var name in names) {
    print(name);
  }
}
