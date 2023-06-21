import 'package:dashboard/services/handles/validators/name_validator.dart';

import '../../../essencial_imports.dart';
import '../../../services/handles/validators/validation_imports.dart';
import 'package:dashboard/services/handles/validators/email_validator.dart';
import 'package:dashboard/services/handles/validators/password_validator.dart';

class RegisterViewModel extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Validator<String> emailValidator = EmailValidator();
  final Validator<String> passwordValidator = PasswordValidator();
  final Validator<String> nameValidator = NameValidator();

  String email = '';
  String password = '';
  String name = '';

  void validateForm() {
    // Why I made this?
    //
    // Even though the validation is done externally, with this configuration,
    // when you call validateForm, the validate method of FormState will traverse all the FormFields
    // that are associated with the Form, call the validation functions you provided
    // them with and will automatically display error messages in the user interface if the validation fails.
    if (formKey.currentState!.validate()) {
      print('Form validator...login');
      print('$email === $password');
    } else {
      print('Form noy valid...login');
    }
  }
}
