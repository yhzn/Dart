// 匿名函数

var printInt=(int n){
  return n;
};




void main () {
  print(printInt(3));

  // 自执行方法
  ((int n){
    print(n);
  })(12);

  // 递归
  int JC=1;
  int fn(int n){
    JC*=n;
    if(n==1){
      return null;
    }
    fn(n-1);
  }
  fn(5);
  print(JC);

  // 闭包：函数中嵌套函数并且返回这个函数

  Function fn1=((){
    int a=1;
    return (){
      a++;
      print(a);
    };
  })();
  fn1();
  fn1();
  fn1();




}