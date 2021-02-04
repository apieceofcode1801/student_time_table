// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../services/auth_service.dart';
import '../services/data_service.dart';
import '../services/user_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<AuthService>(() => AuthService());
  gh.lazySingleton<DataService>(() => DataService());
  gh.lazySingleton<UserService>(() => UserService());
  return get;
}
