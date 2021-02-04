import 'package:injectable/injectable.dart';
import 'package:student_time_table/datamodels/user.dart';
import 'package:student_time_table/services/abstracts/auth_service_abs.dart';

@lazySingleton
class AuthService extends AuthServiceAbstract {
  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<bool> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<User> login(String username, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<User> register(String username, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
