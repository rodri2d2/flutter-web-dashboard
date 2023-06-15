/// Represents a form field error in the validation.
///
/// This interface defines the basic structure for representing a field error.
/// Each field error must have a message describing the specific error.
abstract class FieldError {
  final String message;
  FieldError(this.message);
}

class EmptyFieldError extends FieldError {
  EmptyFieldError() : super('This field cannot be empty');
}

class InvalidEmailError extends FieldError {
  InvalidEmailError() : super('Invalid email address');
}

class EmptyPasswordError extends FieldError {
  EmptyPasswordError() : super('Password must contain at least 6');
}

class ShortPasswordError extends FieldError {
  ShortPasswordError() : super('Password is too short');
}
