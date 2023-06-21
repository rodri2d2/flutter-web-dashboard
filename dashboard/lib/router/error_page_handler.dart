import 'package:fluro/fluro.dart';
import '../essencial_imports.dart';
import '../views/error/no_page_found_view.dart';
import '../views/sidebar/sidebar_view_model.dart';

class ErrorPageHandler {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    Provider.of<SideBarViewModel>(context!, listen: false)
        .setCurrentPage('/404');

    return const PageNotFound();
  });
}
