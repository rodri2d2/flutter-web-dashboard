import 'package:fluro/fluro.dart';
import '../views/error/no_page_found_view.dart';

class ErrorPageHandler {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return const PageNotFound();
  });
}
