class TValidator {
  static String? validateEmptyText(String? value) {
    if (value == null || value.isEmpty) {
      return "Required *";
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    // Regex for email validation
    final emailRegex = RegExp(r'^[\w-\. ]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return "Invalid email address";
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    // Check for minimum password length
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special character";
    }

    return null;
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return "Enter Password Again";
    }

    if (value != password) {
      return "Passwords do not match";
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }

    // Regex for phone number validation
    final phoneRegex = RegExp(r'^\d{11}$');

    if (!phoneRegex.hasMatch(value)) {
      return "Invalid phone number format";
    }

    return null;
  }
}
