import 'Db.dart';
class MySql implements Db {
  @override
  add(String data) {
    // TODO: implement add
    print("$data---MySql");
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