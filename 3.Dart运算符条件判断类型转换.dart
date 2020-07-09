void main () {
  int a=13;
  int b=5;

  // 算数运算
  print("算数运算");
  print(a+b); // 加
  print(a-b); // 减
  print(a*b); // 乘
  print(a/b); // 除
  print(a~/b); // 取整
  print(a%b); // 取余

  // 关系运算
  print("关系运算");
  print(a==b);    // 判断是否相等
  print(a!=b);    // 判断是否不等
  print(a>b);     // 判断是否大于
  print(a<b);     // 判断是否小于
  print(a>=b);    // 判断是否大于等于
  print(a<=b);    // 判断是否小于等于

  // 逻辑运算  !  &&  ||
  print("逻辑运算");
  bool c=false;
  bool d=true;
  print(!c);
  print(c&&d);
  print(c||d);

  // 赋值运算 =  ??= (??= 表示如果b为空的话把 23赋值给b)
  print("赋值运算");
  int e;
  e??=23;
  print(e);

  // 复合赋值运算符 +=   -=    *=    /=     %=     ~/=


  // 条件判断 if  else

  // 三目运算符

  // ?? 运算符

  String sex="1";
  switch(sex){
    case "1":
      print("男");
      break;
    default:
      print("女");
      break;
  };

  bool flag=true;
  String sm=flag?"真的":"假的";
  print(sm);

 int f;
 int g=f??10;
 print(g);

 int h=20;
 int k=h??10;
 print(k);

 /*
 * 类型转换
 *
 * 1、Number与String类型转换
 *    toString()     parse()
 *
 * 2、其他类型转换成Booleans类型
 *    isEmpty：判断字符串是否为空
 *
 *
 *
 * */

  String str="123";
  String str1="123.23";
  int pNum=int.parse(str);
  double pNum1=double.parse(str1);
  print(pNum1);
  print(pNum is int);
  String toStr=pNum.toString();

  try{

  }catch(err){

  };

  if(str.isEmpty){
    print("字符串为空");
  }else{
    print("字符串不为空");
  }

  var v=0/0;
  if(v.isNaN){
    print("NaN");
  }

}