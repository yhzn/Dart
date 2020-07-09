/**
 * 接口可以使用抽象类也可以使用普通类，建议使用抽象类
 *
 * Dart 中一个类实现多个接口
 *
 * mixins（混入的意思）：在类中混入其他功能
 *
 * 在Dart中可以使用mixins实现类似多继承的功能
 * mixin使用条件随着版本一直在变，这里讲Dart2.x中使用条件
 * 1、作为mixins的类只能继承自Object,不能继承其他类
 * 2、作为mixins的类不能有构造函数
 * 3、一个类可以mixins多个mixins类
 * 4、mixins绝不是继承，也不是接口，而是一种全新的特性
 *
 */
abstract class A {
  printA();
}
abstract class B {
  printB();
}
class C implements A,B {
  @override
  printA() {
    // TODO: implement printA
    print("printA");
  }

  @override
  printB() {
    // TODO: implement printB
    print("printB");
  }

}


class D {
  void printD(){
    print("printD");
  }
}
class E {
  void printE(){
    print("printE");
  }
}
// mixins 可以实现类似多继承
class F with D,E {

}

class Person {
  String name;
  int age;
  Person(this.name,this.age);
}

// 先继承Person 再 mixins A B
class G extends Person with A,B {  // 如果有相同方法，后面会把前面替换
  G(String name, int age) : super(name, age);

  @override
  printA() {
    // TODO: implement printA
    throw UnimplementedError();
  }

  @override
  printB() {
    // TODO: implement printB
    throw UnimplementedError();
  }

}
void main () {

}