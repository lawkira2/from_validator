import 'package:registration_form/utils/util.dart';

mixin Validation {
  String? nameValidation(String? name) {
    if (name!.isEmpty) {
      return 'Field is required';
    } else if (name.length < 4) {
      return 'More then 3 Character required';
    }
    return null;
  }

  String? phoneValidation(String? number) {
    if (number!.isEmpty) {
      return 'Field is required';
    } else if (number.length < 10 || number.length > 10) {
      return 'Enter a Valid Number';
    }
    return null;
  }

  String? emailValidation(String? mail) {
    RegExp regex = RegExp(emailPattern);
    if (mail!.isEmpty) {
      return 'Field is required';
    } else if (!regex.hasMatch(mail)) {
      return 'Enter a valid mail address';
    } else {
      return null;
    }
  }

  String? passwordValidation(String? password) {
    if (password!.isEmpty) {
      return 'Field is Required';
    } else if (!password.contains(RegExp("[0-9]"))) {
      return 'AtLeast 1 Number';
    } else if (!password.contains(RegExp("[a-zA-Z]"))) {
      return 'AtLeast 1 Character';
    } else if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'AtLeast 1 Special Character';
    } else {
      return null;
    }
  }

  String? cpValidation(String? cPassword, String? password) {
    if (password == null || password == '') {
      return 'Firstly Fill password field';
    } else if (cPassword!.isEmpty) {
      return 'Field required';
    } else if (cPassword != password) {
      return 'Password not Matching';
    } else {
      return null;
    }
  }
}
