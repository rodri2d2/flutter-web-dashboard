import '../imports.dart';

/// Inteface for standardisation of validators
///
/// This class provides a `validate` method that all validator classes must implement.
/// This method takes a value of generic type `T` and returns a `ValidationResult`.
///
/// Specific validator classes implementing this interface can provide their own custom validation
/// logic in the implementation of the `validate` method.
///
/// The use of a generic `T` type allows great flexibility, as the validator can be used with any data type.
/// This can be useful, for example, when validating data of different types, such as strings for emails or passwords,
/// numbers, ages, etc...
///
/// E.G.: implementation of a specific validator class:
///
/// ```
/// class EmailValidator implements Validator<String> {
///   @override
///   ValidationResult validate(String value) {
///     if (!EmailValidator.validate(value))
///       return ValidationError('Invalid email format');
///     return ValidationSuccess();
///   }
/// }
/// ```
///
/// In this example, `EmailValidator` implements `Validator<String>`, which means that it validates data of type `String`
/// In its `validate` method, it checks if the value provided is a valid email. If it is not, it returns a `ValidationError
/// with an error message. If valid, it returns a `ValidationSuccess`.
abstract class Validator<T> {
  ValidationResult validate(T value);
}
