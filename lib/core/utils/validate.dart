import 'package:flutter/cupertino.dart';

abstract class Validate {
  static void offKeyboard(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
      return;
    }
    currentFocus.unfocus();
  }

  static String? validateEmail(value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value.trim())) {
      return 'Enter Valid Email';
    } else if (value.trim().isEmpty) {
      return 'Please enter your email!';
    } else
      return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password cannot be empty!';
    } else if (value.length < 6) {
      return "Password must be up to 6 characters";
    } else {
      return null;
    }
  }

  static String? validateConfirmPassword(val, password) {
    if (val != password) {
      return "Password do not match";
    } else {
      return null;
    }
  }
}
