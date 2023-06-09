import 'package:dashboard/services/handles/validators/validation_imports.dart';
import 'package:email_validator/email_validator.dart' as email;

/// Validates a value of type `String` as an email address.
///
/// This class implements the validator to validate an email address.
/// Checks if the provided value is empty and returns a `ValidationError` if it is.
/// Otherwise, it returns a `ValidationSuccess` with a success message.
///
/// E.G.:
///
/// ```
/// final validator = EmailValidator();
/// final result = validator.validate('example@email.com');
/// if (result is ValidationSuccess) {
///   print('Validation succeeded: ${result.message}');  // Output: 'Validation succeeded: Succeed!'
/// } else if (result is ValidationError) {
///   print('Validation error: ${result.error.message}');  // Output: 'Validation error: This field cannot be empty'
/// }
/// ```
class EmailValidator implements Validator<String> {
  @override
  ValidationResult validate(String value) {
    return !email.EmailValidator.validate(value)
        ? ValidationError(InvalidEmailError())
        : ValidationSuccess('Succeed!');
  }
}
