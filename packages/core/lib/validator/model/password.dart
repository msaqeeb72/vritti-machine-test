import 'package:formz/formz.dart';

enum PasswordValidationError {empty,noUppercase,noDigit,tooShort}
class Password extends FormzInput<String,PasswordValidationError>{
  const Password.pure() : super.pure("");
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.length < 8) {
      return PasswordValidationError.tooShort;
    }

    // Check if the password contains a digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return PasswordValidationError.noDigit;
    }

    // Check if the password contains an uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return PasswordValidationError.noUppercase;
    }

    // If everything is fine, return null
    return null;
  }

}