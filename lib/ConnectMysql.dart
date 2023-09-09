import 'package:mysql1/mysql1.dart';



class Mysql {
  // static String host = '192.168.10.5',
  static String host = '140.127.114.38',
  // static String host = '192.168.0.70',
      user = 'MyProject',
      password = '123',
      db = 'project';
  static int port = 10075;

  Mysql();
  Future<MySqlConnection> getConnection() async{
    print('嘗試連線資料庫中...');
    var settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }
}