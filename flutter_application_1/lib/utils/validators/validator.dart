class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required,';
    }

    //Reguler expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address,';
    }
    return null;
  }

  static String? valdatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Passwor is required.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 character long.';
    }

    // Check for Uppercase Letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for sepesial chracters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?/":;{}|<>[]]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  static String? valdatePhoneNumbers(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required.';
    }

    // Regular expression for phone number validate (assuming a 10-digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }

  /// Add more custom validator as nedded for your specific requirements.
}
