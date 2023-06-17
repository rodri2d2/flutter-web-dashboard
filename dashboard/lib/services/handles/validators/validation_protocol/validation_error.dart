import 'package:dashboard/services/handles/validators/validation_imports.dart';

/// Represents a validation result with error.
///
/// This class inherits from `ValidationResult` and is used to represent a validation result with error.
/// The generic type `T` is used to allow flexibility in validation results.
///
/// The `error` property contains the specific error object that occurred during validation.
///
/// E.G.:
///
/// ```
/// final error = FieldError('Invalid input');
/// final result = ValidationError<FieldError>(error);
/// print(result.description());  // Output: 'Validation Error: Invalid input'
/// ```
class ValidationError<T> extends ValidationResult<T> {
  final T error;
  ValidationError(this.error);

  @override
  String description() => 'Validation Error: $error';
}
