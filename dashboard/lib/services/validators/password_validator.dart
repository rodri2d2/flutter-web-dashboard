import 'package:dashboard/services/validators/imports.dart';

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
class PasswordValidator implements Validator<String> {
  @override
  ValidationResult validate(String value) {
    if (value.isEmpty) return ValidationError(EmptyPasswordError());
    return ValidationSuccess('Succeed!');
  }
}
