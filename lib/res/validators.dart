class Validators {
  static String? emptyValidator(String? text) {
    if (text!.isEmpty) {
      return 'Please fill in the field';
    }
    return null;
  }

  static String? emailValidator(String? email) {
    if (email!.isEmpty) {
      return 'Please fill in the email';
    }

    const p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    final regExp = RegExp(p);

    if (!regExp.hasMatch(email.trim())) {
      return 'Please enter valid email address';
    }
    return null;
  }

  static String? phoneValidator(String? number) {
    if (number!.isEmpty) {
      return 'Enter a valid number';
    }
    const n = r'^(^\+62|62|^08)(\d{3,4}-?){2}\d{3,4}$';
    final regExp = RegExp(n);
    if (!regExp.hasMatch(number.trim())) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  static String? usernameValidator(String? username) {
    if (username!.isEmpty) {
      return 'Please fill in the username';
    }

    if (username.length < 6) {
      return 'username must be at least 6 characters.';
    }
    return null;
  }

  static String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      return 'Please fill in the password';
    }

    if (password.length < 6) {
      return 'Password length must be at least 6 characters.';
    }
    return null;
  }

  static String? descriptionValidator(String description) {
    if (description.isEmpty) {
      return 'Description is required';
    }

    if (description.length < 5) {
      return 'Description must be at least 5 characters.';
    }
    return null;
  }
}
