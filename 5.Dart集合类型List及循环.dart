/*
* Dart 集合类型List Set Map 详解以及循环语句forEach map where any every
*
* list常用属性和常用方法
*     常用属性：
*         length
*         reversed
*         isEmpty
*         isNotEmpty
*     常用方法：
*         add      怎加
*         addAll    拼接数组
*         indexOf   查找  传入具体值
*         remove    删除  传入具体值
*         removeAt  删除  传入索引值
*         fillRange 修改
*         insert(index,value)   指定位置插入
*         insertAll(index,list) 指定位置插入list
*         toList()  其他类型转换成List
*         join()    list转换成字符串
*         split()   字符串转换成list
*         forEach
*         map
*         where  把满足条件的返回新的集合 和 js filter 类似
*         any    只要有一个满足条件就返回 true 和 js some 类似
*         every  每一个都满足条件才返回 true   和 js every 类似
*
 */

void main () {
//  List list = new List();
//  list.add(1);
//  list.add(3);
//  print(list);
  List list=["香蕉","苹果","西瓜"];
//  print(list.length);
//  print(list.isEmpty);
//  print(list.isNotEmpty);
//  print(list.reversed);
//  print(list.reversed.toList());
  list.add("桃子");
  list.addAll(["橙子","葡萄"]);  // 拼接数组
  print(list.indexOf("苹果"));   // 返回索引
  print(list.indexOf("x"));      // 没有返回 -1
  print(list);
  list.remove("橙子");     // 传值
  list.removeAt(2);        // 传索引
  print(list);
  list.fillRange(1, 3,"修改后的水果");  // 从开始到结束的索引值都被修改
  print(list);
  list.insert(1, "插入新值");
  print(list);
  list.insertAll(1, ["插入集合","插入集合","插入集合"]);
  print(list);

  String toStr=list.join("/");
  print(toStr);
  List toLis=toStr.split("/");
  print(toLis);

//  for(var item in toLis){
//    print(item);
//  }

//  toLis.forEach((value) {
//    print(value);
//  });

  var newList=toLis.map((e) => e+"_map");
  print(newList);
  print(newList.toList());

  List intList=[1,2,3,5,6];
  var intL=intList.where((value) => value%2==0);
  print(intL.toList());

  bool anyList=intList.any((value) {
      return value>3;
  });
  print(anyList);
}