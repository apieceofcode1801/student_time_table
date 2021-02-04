import 'package:auto_route/auto_route_annotations.dart';
import 'package:student_time_table/ui/views/forgot_password/forgot_password_view.dart';
import 'package:student_time_table/ui/views/home/home_view.dart';
import 'package:student_time_table/ui/views/login/login_view.dart';
import 'package:student_time_table/ui/views/register/register_view.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeView, initial: true),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: ForgotPasswordView),
  // MaterialRoute(page: RegisterView),
])
class $Router {}
