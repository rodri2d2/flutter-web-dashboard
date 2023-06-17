import 'package:dashboard/essencial_imports.dart';
import 'package:dashboard/services/auth/auth_service.dart';
import 'package:dashboard/views/dashboard/dashboard_view.dart';
import 'package:dashboard/views/login/login_view.dart';
import 'package:dashboard/views/register/register_view.dart';
import 'package:fluro/fluro.dart';

class AdminHandlers {
  static Handler root = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);

    if (authService.authStatus == AuthStatus.notAuthenticated) {
      return const LoginView();
    } else {
      return const DashboardView();
    }
  });

  static Handler login = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);

    if (authService.authStatus == AuthStatus.notAuthenticated) {
      return const LoginView();
    } else {
      return const DashboardView();
    }
  });

  static Handler register = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);

    if (authService.authStatus == AuthStatus.notAuthenticated) {
      return const RegisterView();
    } else {
      return const DashboardView();
    }
  });
}
