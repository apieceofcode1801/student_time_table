import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:student_time_table/app/locator.dart';
import 'package:student_time_table/services/auth_service.dart';
import 'package:student_time_table/services/data_service.dart';
import 'package:student_time_table/services/user_service.dart';

@lazySingleton
class AuthServiceMock extends Mock implements AuthService {}

class DataServiceMock extends Mock implements DataService {}

class UserServiceMock extends Mock implements UserService {}

AuthServiceMock registerAndGetAuthServiceMock() {
  removeRegistrationIfExists<AuthService>();
  var service = AuthServiceMock();
  locator.registerSingleton<AuthService>(service);
  return service;
}

DataServiceMock registerAndGetDataServiceMock() {
  removeRegistrationIfExists<DataService>();
  var service = DataServiceMock();
  locator.registerSingleton<DataService>(service);
  return service;
}

UserServiceMock registerAndGetUserServiceMock() {
  removeRegistrationIfExists<UserService>();
  var service = UserServiceMock();
  locator.registerSingleton<UserService>(service);
  return service;
}

registerServices() {
  registerAndGetAuthServiceMock();
  registerAndGetDataServiceMock();
  registerAndGetUserServiceMock();
}

removeServices() {
  locator.unregister<AuthService>();
  locator.unregister<DataService>();
  locator.unregister<UserService>();
}

removeRegistrationIfExists<T>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
