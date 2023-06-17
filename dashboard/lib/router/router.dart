import 'package:dashboard/router/admin_handlers.dart';
import 'package:dashboard/router/dashboard_handlers.dart';
import 'package:dashboard/router/error_page_handler.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  // Root
  static String rootRoute = '/';

  // Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  // Dashboard
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    //
    router.define(rootRoute,
        handler: AdminHandlers.root, transitionType: TransitionType.none);

    // Errors
    router.notFoundHandler = ErrorPageHandler.noPageFound;

    // Auth
    router.define(loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none);

    // Dashboard
    router.define(dashboardRoute, handler: DashboardHandlers.dashboard);
  }
}
