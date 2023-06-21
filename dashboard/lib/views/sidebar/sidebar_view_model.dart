import 'package:dashboard/essencial_imports.dart';

class SideBarViewModel extends ChangeNotifier {
  static late AnimationController menuController;
  static bool isOpen = false;
  static Animation<double> movement = Tween<double>(begin: -200, end: 0)
      .animate(
          CurvedAnimation(parent: menuController, curve: Curves.easeInOut));

  static Animation<double> opcacity = Tween<double>(begin: 0, end: 0.5).animate(
      CurvedAnimation(parent: menuController, curve: Curves.easeInOut));

  String _currentPage = '';

  String get currentPage => _currentPage;

  void setCurrentPage(String routeName) {
    _currentPage = routeName;
    Future.delayed(Duration(milliseconds: 300), () {
      notifyListeners();
    });
  }

  static void openMenu() {
    isOpen = true;
    menuController.forward();
  }

  static void closeMenu() {
    isOpen = false;
    menuController.reverse();
  }
}
