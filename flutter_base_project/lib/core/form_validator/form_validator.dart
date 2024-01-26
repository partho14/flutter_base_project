import 'package:get/get.dart';

class FormValidator {
  //email validator
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'pleaseEnterEmail'.tr;
    }
    // Check if the email address is at least 6 characters long.
    if (!RegExp(r'^.{6,}$').hasMatch(value)) {
      return 'emailLength'.tr;
    }
    // Check if the email address does not contain any spaces.
    if (value.contains(' ')) {
      return 'emailSpace'.tr;
    }
    // Check if the email address contains an @ symbol.
    if (!value.contains('@')) {
      return 'emailSymbolCheck'.tr;
    }
    // Check if the email address contains a domain name.
    int atIndex = value.indexOf('@');
    String domain = value.substring(atIndex + 1);
    if (!domain.contains('.')) {
      return 'emailDomainCheck'.tr;
    }
    // Check if the domain name is a valid top-level domain (TLD).
    List<String> tlds = ['com', 'org', 'net', 'edu', 'gov'];
    if (!tlds.contains(domain.substring(domain.lastIndexOf('.') + 1))) {
      return 'emailTopLevelDomainCheck'.tr;
    }
    return null;
  }

  //name validator
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'thisFieldIsRequired'.tr;
    }
    return null;
  }

//name validator
  static String? validateChemistCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'thisFieldIsRequired'.tr;
    }
    return null;
  }

  //name address
  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'thisFieldIsRequired'.tr;
    }
    return null;
  }

  //otp validator
  static String? validateOtp(String? value) {
    if (value == null || value.isEmpty) {
      return 'pleaseEnterOtp'.tr;
    }
    return null;
  }

  //mobile number validator
  static String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'pleaseEnterMobileNumber'.tr;
    }

    // Check if the mobile number starts with a 0,1.
    if (!value.startsWith("01")) {
      return 'mobileRequirements'.tr;
    }

    // Check if the mobile number is 10 digits long.
    if (value.length != 11) {
      return 'mobileLength'.tr;
    }

    // Check if the mobile number is a valid number.
    try {
      int.parse(value);
    } catch (e) {
      return 'validMobile'.tr;
    }
    return null;
  }

  //password validator signup
  static String? validPasswordSignUp(String? value) {
    if (value == null || value.isEmpty) {
      return 'enterPass'.tr;
    }

    // Minimum length validation
    if (value.length < 8) {
      return 'passMinLength'.tr;
    }

    // Uppercase and lowercase letters validation
    // if (!value.contains(RegExp(r'[a-z]')) || !value.contains(RegExp(r'[A-Z]'))) {
    //   return 'passUpperAndLower'.tr;
    // }

    // Numbers validation
    // if (!value.contains(RegExp(r'[0-9]'))) {
    //   return 'passMustHaveNumeric'.tr;
    // }
    //
    // // Special characters validation
    // if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    //   return 'passMustHaveSpecialCharacter'.tr;
    // }

    // Password is valid
    return null;
  }

  //valid passLogin
  static String? validPasswordLogin(String? value) {
    if (value == null || value.isEmpty) {
      return 'enterPass'.tr;
    }
    // You can add more specific password validation here if needed.
    return null;
  }
}
