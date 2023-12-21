main(List<String> args) {
  base();
}

void base() {
  var p = Person("xiaoming", 18, height: 19.11);
  print(p);
}

class Animal {
  int age;

  Animal(this.age);
}

class Person extends Animal {
  String name;
  double height;

  Person(this.name, super.age, {required this.height, int size = 0});
}

/*
抽象类无法实例化
除非有工厂构造函数
*/
abstract class Shape {
  int getArea();

  String getInfo() {
    return "形状";
  }
}
