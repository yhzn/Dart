/**
 * Dart 中的静态成员
 *
 * 1、使用 static 关键字来实现类级别的变量和函数
 *
 * 2、静态方法不能访问非静态成员，非静态方法可以访问静态成员
 *
 * 静态方法类不用实例就可以访问
 *
 *
 * Dart 中对象操作符
 *
 * ?   条件运算符 （了解）
 * as  类型转换
 * is  类型判断
 * ..  级联操作 （连缀）
 *
 *Dart 中类的继承
 * 1、子类用 extends 关键词来继承父类
 * 2、子类会继承父类里面可见的属性和方法 但不会继承构造函数
 * 3、子类能复写父类的方法 getter 和 setter
 *
 */
class Person {
  static String name="芊芊";
  int age;
  Person(this.age);
  static void show () {  // 静态方法不能访问非静态成员
    print(name);
  }
  void work () {
    print("work---${this.age}");
  }
  void printInfo(){  // 非静态方法可以访问静态成员
    print(name);     // 访问静态属性

    print(this.age); // 访问非静态属性

    show();

    print("$name---${this.age}");
  }
}

class Web extends Person {
  String sex;
   Web(int age,String sex) : super(age){
     // : super(age) 表示执行子类构造函数之前，把子类传过来构造函数的参数 赋值给父类
     this.sex=sex;
   }
   // 复写父类方法  可以不加 @override  正常要加
   @override    // 可写可不写，建议写
   void printInfo () {
     this.work();  // 也可以通过 this 直接使用
     super.work();  // 子类调用父类方法
     print("${this.sex}---${this.age}");
   }


}

void main () {
  print(Person.name);
  Person.show();
  Person p=new Person(23);
  p.printInfo();

  var p1;
  p1="";
  p1=new Person(25);
  (p1 as Person).printInfo();  // 转换为 Person 对象

  p1..age=28..printInfo();     // 连缀操作  等价 p1.age=28;  p1.printInfo();


  Web w=new Web(26,"女");
  w.printInfo();

}