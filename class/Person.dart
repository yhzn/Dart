class Person{
  String name;
  int age;
  String _private="私有属性";
  // 构造函数，默认构造函数名称和类名称一样,在实例化的时候触发
  //  Person (String name,int age) {
  //    this.name=name;
  //    this.age=age;
  //  }
  // 构造函数简写
  Person(String this.name,int this.age);
  void printInfo () {
    print("$name---$age");
    // 类中推荐写法
    print("${this.name}---${this.age}");
  }
  void setAge(int n) {
    this.age=n;
  }
  String getInfo () {
    return "${this.name}---${this.age}";
  }
}