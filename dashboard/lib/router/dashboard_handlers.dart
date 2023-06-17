import 'package:dashboard/views/dashboard/dashboard_view.dart';
import 'package:dashboard/views/auth/login/login_view.dart';
import 'package:fluro/fluro.dart';
import '../essencial_imports.dart';
import '../services/auth/auth_service.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);
    if (authService.authStatus == AuthStatus.authenticated) {
      return const DashboardView();
    } else {
      return const LoginView();
    }
  });
}
