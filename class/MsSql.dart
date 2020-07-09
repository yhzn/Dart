import 'Db.dart';
class MsSql implements Db {
  @override
  add(String data) {
    // TODO: implement add
    print("$data---MsSql");
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  String url;
  
}