import 'package:student_time_table/datamodels/user.dart';

abstract class UserServiceAbstract {
  Future<User> getUserWithId(String userId);
  Future<User> saveUser(User user);
}
