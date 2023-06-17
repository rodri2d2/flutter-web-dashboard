import 'package:dashboard/essencial_imports.dart';
import 'package:dashboard/router/router.dart';
import 'package:dashboard/services/local_storage/local_store.dart';
import 'package:dashboard/services/navigation_service.dart';

enum AuthStatus {
  checking,
  authenticated,
  notAuthenticated,
}

class AuthService extends ChangeNotifier {
  String? _token;
  AuthStatus authStatus = AuthStatus.checking;

  AuthService() {
    isAuthenticated();
  }

  void login(String email, String password) {
    // HTTP request
    _token = 'klkdlksdlkd.lvcowoeiw13432.afvsvwer4tyhdb.asfdfwer';
    LocalStorage.prefs.setString('token', _token!);

    // If OK navigate to Dashboard
    authStatus = AuthStatus.authenticated;
    notifyListeners();

    NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');

    if (token == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }

    // TODO: do some back and proceess
    await Future.delayed(Duration(milliseconds: 1000));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }
}
