import 'package:dashboard/services/validators/validation_imports.dart';

/// Validates a value of type `String` as a password.
///
/// This class implements the validator to validate a password.
/// Checks if the provided value is empty and returns a `ValidationError` if it is.
/// Otherwise, it returns a `ValidationSuccess` with a success message.
///
/// E.G.:
///
/// ```
/// final validator = PasswordValidator();
/// final result = validator.validate('password123');
/// if (result is ValidationSuccess) {
///   print('Validation succeeded: ${result.message}');  // Output: 'Validation succeeded: Succeed!'
/// } else if (result is ValidationError) {
///   print('Validation error: ${result.error.message}');  // Output: 'Validation error: Password must contain at least 6'
/// }
/// ```
class NameValidator implements Validator<String> {
  @override
  ValidationResult validate(String value) {
    if (value.isEmpty) {
      return ValidationError(EmptyFieldError());
    }

    if (value.length < 3) {
      return ValidationError(ShortNameError());
    }

    if (value.contains(RegExp(r'[0-9]'))) {
      return ValidationError(InvalidNamelError());
    }

    if (value.contains(RegExp(r'[!@#\$?=_]'))) {
      return ValidationError(InvalidNamelError());
    }

    return ValidationSuccess('Succeed!');
  }
}
