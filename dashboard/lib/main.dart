import 'package:dashboard/essencial_imports.dart';
import 'package:dashboard/views/auth/auth_layout.dart';
import 'package:dashboard/views/dashboard/dashboard_layout.dart';
import 'package:dashboard/views/loading/splash_layout.dart';
import 'package:dashboard/router/router.dart';
import 'package:dashboard/services/auth/auth_service.dart';
import 'package:dashboard/services/local_storage/local_store.dart';
import 'package:dashboard/services/navigation_service.dart';

void main() async {
  await LocalStorage.configurePrefs();
  Flurorouter.configureRoutes();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => AuthService(),
        ),
      ],
      child: const DashboardApp(),
    );
  }
}

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      builder: (_, child) {
        final authProvide = Provider.of<AuthService>(context);

        if (authProvide.authStatus == AuthStatus.checking) {
          return const SplashLayout();
        }

        if (authProvide.authStatus == AuthStatus.authenticated) {
          return DashboardLayout(child: child!);
        } else {
          return AuthLayout(child: child!);
        }

        // return AuthLayout(
        //   child: child!,
        // );
      },
      theme: ThemeData.light().copyWith(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(
            Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
