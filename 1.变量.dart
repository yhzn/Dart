  /*
  Dart 常量：final 和 const 修饰符
       const值不变，一开始就得赋值
       final 可以开始不赋值 只能赋值一次，final不仅有const的编译时常量的特性，最重要的它是运行时永远不改变的量

   */

  void main(){
    final name="test";
    final String nickName="Bobby";

    const bar=100000;
    const double atm=1.01325*bar;
    print(name);
  }