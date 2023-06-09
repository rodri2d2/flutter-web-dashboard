import 'package:dashboard/services/handles/validators/validation_imports.dart';

/// It represents a successful validation result case.
///
/// This class inherits from `ValidationResult` and is used to represent a successful result of a validation.
/// The generic type `T` is used to allow flexibility in validation results.
/// It is realy important that T must contain a property called message to send through.
/// `description()` better use for DEBUG
///
/// The `success` property contains an optional message describing the outcome of the validation.
///
/// E.G.:
///
/// ```
/// final result = ValidationSuccess<String>('Validation succeeded');
/// print(result.description());  // Output: 'Validation succeeded'
/// ```
class ValidationSuccess<T> extends ValidationResult<T> {
  final T success;
  ValidationSuccess(this.success);

  @override
  String description() => 'Validation succed';
}
