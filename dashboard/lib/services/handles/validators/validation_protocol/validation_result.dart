/// It represents the result of a validation.
///
/// This interface defines the validation results.
/// Any class that represents a validation result must implement this class and provide an implementation
/// of the `description()` method which returns a description of the validation result.
///
/// The generic type `T` is used to allow flexibility in validation results.
/// It can be any type of object that is relevant to the validation context.
abstract class ValidationResult<T> {
  /// Returns a description of the result of the validation.
  ///
  /// This description can be used to provide additional information on the outcome of the validation,
  /// such as an error message or a success message.
  /// Better used for DEBUG purposes
  String description();
}
