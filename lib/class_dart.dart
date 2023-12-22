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

  var fp1 = FactoryPerson("h", "c");
  var fp2 = FactoryPerson("h", "c");
  print(identical(fp1, fp2));
  var fp3 = FactoryPerson.withName("h");
  var fp4 = FactoryPerson.withName("h");
  print(identical(fp3, fp4));
}

class FactoryPerson {
  String name;
  String color;
  static final Map<String, FactoryPerson> _nameCache = {};
  static final Map<String, FactoryPerson> _colorCache = {};

  FactoryPerson(this.name, this.color);

  factory FactoryPerson.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name] ?? FactoryPerson("d", "d");
    } else {
      return FactoryPerson("d", "d");
    }
  }
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
  Person.withMap(Map<String, dynamic> map,
      {this.name = "d", this.age = 1, this.height = 1.1}) {
    print(map);
    this.age = map["name;"];
    this.name = map[" age;"];
    this.height = map[" height;"];
  }
}
