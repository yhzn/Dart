/**
 * 面向对象编程（OOP）的三个基本特征：封装、继承、多态
 *
 * 封装：封装是对象和类的主要特性。封装，把客观事物封装成抽象的类，并把自己部分属性和方法提供给其他对象
 *
 * 继承：面向对象编程（OOP）语言的一个主要功能就是“继承”。继承是指这样一种能力：它可以使用现有类功能
 *
 * 多态：允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
 *
 * Dart 所有的东西都是对象，所有的对象都继承Object类
 *
 * Dart 是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类
 *
 * 一个类通常由属性和方法构成
 *
 * 类首字母大写
 *
 * Dart 中的构造函数可以写多个
 *
 * 默认构造函数只能有一个，命名构造函数可以有多个
 *
 * Dart和其他面向对象语言不一样，data中没有 public private protected这些访问修饰符
 * 但是我们可以使用 _ 把一个属性或方法定义成私有，但需要把这个类抽离成单独的文件，否则它还是共有的
 *
  */

import 'class/Person.dart';

// 命名构造函数
class SetName {
  String name;
  int age;
  String _private="私有属性";
  SetName (String name,int age) {
    this.name=name;
    this.age=age;
  }
  SetName.name ():age=26,name="动态赋值" {
    this.name=name;
    print("${this.name}---name 命名构造函数");
  }
  SetName.age ([int age]) {  // 动态赋值
    this.age=age;
    print("age 命名构造函数");
  }
  void printName () {
    print("${this.name}---printName");
  }
  // 类的 get set
  get Info{
    return "${this.name}---${this.age}";
  }
  set Age(value){
    this.age=value;
  }
}

void main () {
   // 实例化
   Person person=new Person("芊芊",26);
   person.printInfo();
   print(person.getInfo());
   person.setAge(18);
   print(person.getInfo());
   // print(person._private);  在单独文件中不能访问私有属性


   // 命名构造函数调用
   SetName setName=new SetName.name();
   setName.printName();
   // 不在单独文件中任然可以访问私有属性
   print(setName._private);
//   setName.Age=18;
//   print(setName.Info);

}

