import 'dart:ffi';

main(List<String> args) {
  print("hello world");
  // final const 都是常量，
  // const必须赋值常量值，（编译期间要有一个确定的值）
  // final 可以通过计算/函数获取一个值（运行期间确定一个值）

  final date = DateTime.now(); // 此处无法使用const
  final p1 = Person("why");
  final p2 = Person("why");
  // 数组
  var names = ["abc", "cba", "nba", "abc"];
  print(names);
  //  set
  var moves = {"xinjichang", "老机场", "流浪机场"};
  var nameSet = Set.from(names);
  print("moves : ${moves}");
  print("nameSet : ${nameSet}");
  // 映射，map
  var info = {
    "name": "peggy",
    "age": 12,
  };
  print(info);

  sayHello("why");
  sayHello2("why2", 1, 1.1);
  sayHello3("why3", height: 1.3, age: 3);

  testArrowFunc(() {
    print("匿名函数调用");
  });

  testArrowFunc(() => print("箭头函数"));

  testFuncParam((num1, num2) {
    return num1 + num2;
  });
  funcParam2((num1, num2) {
    return num1 + num2;
  });

  specialOperator();
  cascadeOperator();
}

class Person {
  String name;

  Person(this.name);
}

// 没有非空/零即真

// 可选参数: 位置可选参数、 命名可选参数
void sayHello(String name) {
  print(name);
}

// 位置可选参数
void sayHello2(String name, [int? age, double? height]) {
  print("$name, $age, $height");
}

// 命名可选参数
void sayHello3(String name,
    {int? age, required double height, double weight = 2.2}) {
  print("$name, $age, $height, $weight");
}

//箭头函数 ： 函数体只有一行代码才可使用
void testArrowFunc(Function func) {
  var result = func();
}

void testFuncParam(int foo(int num1, int num2)) {
  print(foo(2, 3));
}

typedef Sum = int Function(int num1, int num2);

void funcParam2(Sum sum) {
  print(sum(1, 2));
}

//region 特殊运算符

void specialOperator() {
  var name = "why";
  /*
??= 空才赋值
 */
  name ??= "jms";
  print(name);
}

/*
* 级联运算符
*
* */
void cascadeOperator() {
  var p = CascadePerson()
    ..name = "ll"
    ..eat()
    ..run();
}

class CascadePerson {
  late String name;

  void run() {
    print("run");
  }

  void eat() {
    print("eat");
  }
}
//endregion
