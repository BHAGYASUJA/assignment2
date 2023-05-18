import 'package:assignment3/storage/Login%20using%20hive/model/usermodal.dart';
import 'package:hive/hive.dart';

class DBFunction{
 /// only one object instances for one class =>singleton class
  /// Singleton class
   DBFunction.internal();
  static DBFunction instance = DBFunction.internal();
  factory DBFunction(){
    return instance;
  }

 Future<void> userSignUp(User user) async{
    final db = await Hive.openBox<User>('Users');
    db.put(user.id,user);
 }

  Future<List<User>>getUser() async{
    final db = await Hive.openBox<User>('users') ;
    return db.values.toList();
  }
}