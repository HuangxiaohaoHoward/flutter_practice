main(List<String> args) {
  base();
}

void base() {
  /*
  var p = Person(); // 默认构造函数, 如果实现了自定义构造函数就会失效
  */
  var p = Person("xiaoming", 18, height: 19.11);
  var p2 = Person.withNameAgeHeight("xiaoming", 18, 19.22);
  print(p);
}

class Person {
  String name;
  int age;
  double height;

  Person(this.name, this.age, {required this.height});

  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);

  /*
  object 和 dynamic 的区别
  */
  Person.withMap(Map<String, dynamic> map) {
    print(map);
    this.age = map["name;"];
    this.name = map[" age;"];
    this.height = map[" height;"];
  }
}
