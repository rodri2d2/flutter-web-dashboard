import 'package:dashboard/router/router.dart';
import 'package:dashboard/views/blank/blank_view.dart';
import 'package:dashboard/views/sidebar/sidebar_view_model.dart';
import 'package:dashboard/views/dashboard/dashboard_view.dart';
import 'package:dashboard/views/auth/login/login_view.dart';
import 'package:dashboard/views/icons/icons_view.dart';
import 'package:fluro/fluro.dart';
import '../essencial_imports.dart';
import '../services/auth/auth_service.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);
    Provider.of<SideBarViewModel>(context, listen: false)
        .setCurrentPage(Flurorouter.dashboardRoute);
    if (authService.authStatus == AuthStatus.authenticated) {
      return const DashboardView();
    } else {
      return const LoginView();
    }
  });

  static Handler icons = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);
    Provider.of<SideBarViewModel>(context, listen: false)
        .setCurrentPage(Flurorouter.dashboardIconRoute);
    if (authService.authStatus == AuthStatus.authenticated) {
      return const IconsView();
    }
  });

  static Handler blankView = Handler(handlerFunc: (context, params) {
    final authService = Provider.of<AuthService>(context!);
    Provider.of<SideBarViewModel>(context, listen: false)
        .setCurrentPage(Flurorouter.dashboardBlank);
    if (authService.authStatus == AuthStatus.authenticated) {
      return const BlankView();
    }
  });
}
