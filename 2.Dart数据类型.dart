/*
Dart 支持一下数据类型
   Numbers:
      int
      double

   Strings:
      String

   Booleans:
      bool

   List:

   Maps:
      通常来说，Map 是一个键值对相关对象，键和值可以是任何类型的对象。

  is 关键字判断类型
 */

void main(){
  String str="this";


  // 三引号可折行
  String str1="""
  is
  string2  
  """;

//  print(str);
//
//  print(str1);

  // 字符串拼接
  //  print("$str $str1");

  // or
  //  print(str+str1);

  // 数值类型
  // 1.int
  int a=123;
  a=35;
  print(a);

  // 2.double 既可以是整型，也可以是浮点型
  double b=23.55;
  b=26.8;
  print(b);
  double c=a+b;
  print(c);

  // 布尔型
  bool flag=false;
  print(flag);
  if(flag){
    print("成立");
  }else{
    print("不成立");
  }
  print(a!=b);

  // List
  // 方式一
  List list=[1,2,3];
  print(list.length);
  print(list[0]);
  
  // 方式二
  List list2=new List();
  list2.add("a");
  list2.add("b");
  list2.add("c");
  print(list2);

  // 指定list类型
  List list3=new List<String>();
  list3.add("aa");
  list3.add("bb");
  print(list3);


  // map 和json对象类似
  Map person={
    "name":"芊芊",
    "age":20
  };
  print(person);
  print(person["name"]);

  // 类型判断
  print(person is Map);

}