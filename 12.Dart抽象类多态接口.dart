/**
 * Dart 中抽象类：Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
 *
 * 1、抽象类通过 abstract 关键词来定义
 * 2、Dart 中的抽象方法不能用 abstract 声明，Dart中没有方法体的方法我们称为抽象方法
 * 3、如果子类继承抽象类必须得实现里面的抽象方法
 * 4、如果把抽象类当作接口实现的话必须得实现抽象类里面定义的所有属性和方法
 * 5、抽象类不能被实例化，只有继承他的子类可以
 *
 * extends抽象类 和 implements 的区别：
 * 1、如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话我们用 extends 继承抽象类
 * 2、如果只是把抽象类当作标准的话我们就用 implements 实现抽象类
 *
 *
 * 多态：允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
 * 1、子类的实例赋值给父类的引用
 * 2、多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现
 *
 *
 */
import "class/MsSql.dart";


// 案例：定义一个 Animal 类要求他的子类必须包含eat方法

// 抽象类
abstract class Animal { // 抽象类 约束子类 作为标准   接口就是：约定以及规范
  eat();  // 没有方法体就为抽象方法
  run();
  void printInfo () { // 普通方法，子类不用必须实现
    print("打印信息");
  }
}

class Dog extends Animal{  // 抽象类里面的抽象方法，子类必须实现
  @override
  eat() {
    // TODO: implement eat
    // throw UnimplementedError();
    print("eat");
  }

  @override
  run() {
    // TODO: implement run
    print("run");
  }

}
void main () {
  Dog dog=new Dog();
  dog.eat();
  dog.run();
  dog.printInfo();

  MsSql msSql=new MsSql();
  msSql.add("怎加");
}