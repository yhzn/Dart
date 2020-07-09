/*
*内置方法：
* print()
*
* 自定义方法
*    自定义方法的基本格式：
*    返回类型  方法名称(参数1,参数2,.....){
*
*        方法体
*        return 返回值；
*    }
 */

int calc(){
  return 1;
}

int sum(n){
  int sum=0;
  for(int i=0;i<=n;i++){
    sum+=i;
  };
  return sum;
}

// 可以指定参数类型
int sum1(int n){
  int sum=0;
  for(int i=0;i<=n;i++){
    sum+=i;
  };
  return sum;
}

// 参数必选
String printUserInfo(String name,int age){
  return "姓名：$name---年龄：$age";
}

// 可选参数
String printDefUserInfo([String name,int age]){
  return "姓名：$name---年龄：$age";
}

// 部分可选，则可选参数要写在最后面
String printSomeDefUserInfo(String name,[int age]){
  return "姓名：$name---年龄：$age";
}

// 命名参数
String printSetNamePar(String name,{int age,String sex="女"}){
  return "姓名：$name---年龄：$age----性别：$sex";
}
void main () {


  print(calc());
  print(sum(5));
  print("调用内置方法");
  print(printUserInfo("倩三岁",26));
  print(printDefUserInfo());
  print(printSomeDefUserInfo("倩三岁"));
  print(printSetNamePar("倩三岁",age:26));
}