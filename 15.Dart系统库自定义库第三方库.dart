/**
 * 自定义库
 *   可以把公共功能抽离 import 'class/Person.dart';
 *
 * 系统内置库
 *    import 'dart:math';
 *    import 'dart:io';
 *    import 'dart:convert';
 *
 * Pub包管理系统中的库
 *    https://pub.dev/packages
 *    https://pub.flutter-io.cn/packages
 *    https://pub.dartlang.org/packages
 *
 *    1、需要在自己项目根目录新建一个pubspec.yaml
 *    2、在pubspec.yaml文件 然后配置名称、描述、依赖等信息
 *    3、然后运行 pub get 获取包下载到本地
 *    4.项目中引入库 import 'package:http/http.dart' as http;
 *    import 'package:http/http.dart' show http 引入部分功能
 *    import 'package:http/http.dart' hide http 隐藏部分功能
 */

import 'class/Person.dart' as Per;  // 可以使用别名
import 'dart:math';
import 'dart:io';
import 'dart:convert';
void main () {
   print(min(12,25));
}

// api接口：http://news-at.zhihu.com/api/3/stories
_getDataFromZhiHuAPI() async{
  // 1、创建HttpClient对象
  HttpClient httpClient =new HttpClient();
  // 2、创建uri对象
  Uri uri=new Uri.http("http://news-at.zhihu.com", "/api/3/stories");
  // 3、发起请求等待请求
  HttpClientRequest request=await httpClient.getUrl(uri);
  // 4、关闭请求，等待响应
  HttpClientResponse response=await request.close();
  // 5、解密响应中的内容
  return await response.transform(utf8.decoder).join();
}