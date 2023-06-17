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

// EMAIL
class InvalidEmailError extends FieldError {
  InvalidEmailError() : super('Invalid email address');
}

// PASSWORD
class EmptyPasswordError extends FieldError {
  EmptyPasswordError() : super('Password must contain at least 6 chars');
}

class ShortPasswordError extends FieldError {
  ShortPasswordError() : super('Password is too short');
}

class NoUppercaseError extends FieldError {
  NoUppercaseError() : super('Must contain at least one UPPER case letter');
}

class NoNumberError extends FieldError {
  NoNumberError() : super('Must contain at least one number');
}

class NoSpecialCharacterError extends FieldError {
  NoSpecialCharacterError()
      : super('Must contain at least special chars !@#\$?=_');
}

// NAME
class ShortNameError extends FieldError {
  ShortNameError() : super('Name is too short');
}

class InvalidNamelError extends FieldError {
  InvalidNamelError() : super('People\'s name does not contain special cases');
}
