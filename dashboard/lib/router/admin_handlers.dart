import 'package:dashboard/views/login/login_view.dart';
import 'package:dashboard/views/register/register_view.dart';
import 'package:fluro/fluro.dart';

class AdminHandlers {
  static Handler root = Handler(handlerFunc: (context, params) {
    return const LoginView();
  });

  static Handler login = Handler(handlerFunc: (context, params) {
    return const LoginView();
  });

  static Handler register = Handler(handlerFunc: (context, params) {
    return const RegisterView();
  });
}
