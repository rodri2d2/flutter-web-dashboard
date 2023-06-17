import 'package:dashboard/services/validators/password_validator.dart';
import 'package:flutter/material.dart';
import '../../services/validators/email_validator.dart';
import '../../services/validators/validation_protocol/validator.dart';

class LoginViewModel extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Validator<String> emailValidator = EmailValidator();
  final Validator<String> passwordValidator = PasswordValidator();

  String email = '';
  String password = '';

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
