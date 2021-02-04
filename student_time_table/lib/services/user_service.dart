import 'package:injectable/injectable.dart';
import 'package:student_time_table/datamodels/user.dart';
import 'package:student_time_table/services/abstracts/user_service_abstract.dart';

@lazySingleton
class UserService extends UserServiceAbstract {
  @override
  Future<User> getUserWithId(String userId) {
    // TODO: implement getUserWithId
    throw UnimplementedError();
  }

  @override
  Future<User> saveUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }
}
