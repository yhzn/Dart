/**
 * 映射(Maps)是无序键值对：
 *
 * 常用属性：
 * keys
 * values
 * isEmpty
 * isNotEmpty
 *
 * 常用方法：
 * remove(key)   删除指定key的数据
 * addAll({...}) 合并映射
 * containsValue 查看映射内的值 返回true/false
 * forEach
 * map
 * where
 * any
 * every
 */
void main () {
  // 和 json 类似
  Map person={
    "name":"芊芊",
    "age":26
  };
  print(person);

  Map m=new Map();
  m["_name"]="千千";
  print(m);
  print(person.keys);
  print(person.values);
  print(person.isEmpty);
  print(person.isNotEmpty);

  person.addAll(m);
  print(person);
  print(person.remove("age"));
  print(person);
  print(person.containsKey("name"));
  print(person.containsValue("千千"));

  person.forEach((key, value) {
    print("$key:$value");
  });

}