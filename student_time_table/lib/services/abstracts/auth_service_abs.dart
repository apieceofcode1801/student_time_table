import 'package:student_time_table/datamodels/user.dart';

abstract class AuthServiceAbstract {
  Future<User> login(String username, String password);
  Future<User> register(String username, String password);
  Future<bool> logout();
  Future<bool> forgotPassword(String email);
}
