/**
 * 通俗理解：泛型就是解决 类 接口 方法的复用性，以及对不特定数据类型的支持（类型校验）
 */

// 传入类型和返回类型一致 （代码冗余）
String getData1(String str) {
  return str;
}

int getData2(int n) {
  return n;
}

// 不指定返回类型参数类型 可以满座上面的需求但舍弃类型校验 如：传入的是 String 可能返回的是 int
getData3(value) {
  return value;
}

// 泛型可以解决代码重用 和 类型校验问题，通常传入什么类型返回什么类型

T getData<T>(T value) {
  // 会对传入参数和返回类型校验
  return value;
}

getData5<T>(T value) {
  // 会对传入参数校验，不会对返回类型校验
  return value;
}

// 普通类
class PrintClass {
  List list = new List<int>();
  void add(int value) {
    this.list.add(value);
  }

  void printInfo() {
    for (int i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

// 泛型类  解决代码复用 对不特定数据支持
class PrintClassFX<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (int i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

// 泛型接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

// 文件缓存
class FileCatch<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
  }
  @override
  void setByKey(String key, T value) {
    print("文件缓存：key=${key}  value=${value}");
  }

}
// 内存缓存
class MemoryCatch<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
  }
  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print("内存缓存：key=${key}  value=${value}");
  }

}

void main() {
  String getStr = getData<String>("泛型：传入String返回String");
  print(getStr);

  int getInt = getData<int>(12);
  print(getInt);

  // 泛型类
  List list = new List();
  list.add("str");
  list.add(12);
  print(list);

  // 类指定传入类型后 要传入指定类型
  List strList = new List<String>();
  strList.add("str");
//  strList.add(12);  不能传入非String类型
  print(strList);

  PrintClass pc = new PrintClass();
  pc.add(11);
  pc.add(22);
  pc.add(33);
  pc.printInfo();

  PrintClassFX PFX = new PrintClassFX(); // 泛型不指定类型可以插入任意类型 无法进行类型校验
  PFX.add("start");
  PFX.add(55);
  PFX.add("end");
  PFX.printInfo();

  PrintClassFX PT = new PrintClassFX<String>(); // 可以在实例化的时候指定类型

  PT.add("PT start");
//  PT.add(666);     不能传入非String类型
  PT.add("PT end");
  PT.printInfo();


  FileCatch fileCatch=new FileCatch<String>();

  fileCatch.setByKey("文件", "128GB");
  MemoryCatch memoryCatch=new MemoryCatch<int>();
  memoryCatch.setByKey("内存", 256);
}
