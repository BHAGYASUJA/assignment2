
import 'package:hive_flutter/hive_flutter.dart';

part 'usermodal.g.dart';

@HiveType(typeId: 1)
class User{
  final String email;
  final String password;
  String? id;
  User({required this.email,required this.password}){
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}