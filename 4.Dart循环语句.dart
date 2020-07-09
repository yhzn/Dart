void main(){
  int a=10;

//  int b=a++;    // 先把a值给b 然后再自增
//  print(a);
//  print(b);

  int c=++a;     // a先自增  再把值赋给c
  print(c);
  print(a);


  // for 循环
  for(int i=0;i<=5;i++){
    print(i);
  }

  List nameList=["倩三岁","芊芊","小七"];
  for(int i=0;i<nameList.length;i++){
    print(nameList[i]);
  }

  /*
    while(表达式/循环条件){

  };


  do{

  }while(表达式/循环条件);

  break 语句功能：
      1、在switch语句中使流程跳出 switch 结构。
      2、在循环语句中使流程跳出当前循环，遇到break循环终止，后面代码不会执行

      强调：
      1、如果在循环中已经执行了break语句，就不会执行循环体中位于break后的语句
      2、在多层循环中，一个break语句只能向外跳出一层

      break 可以用在switch case 中 也可以用在 for 循环和 while 循环中

      continue
      【注】只能在循环语句中使用，使本次循环结束，即跳过循环体下面尚未执行的语句
      continue可以用在for 循环以及 while 循环中，不建议在while循环中使用，容易造成死循环

   */


}