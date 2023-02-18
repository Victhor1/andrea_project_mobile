import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController ctrlEmail = TextEditingController(),
      ctrlPassword = TextEditingController(),
      ctrlName = TextEditingController(),
      ctrlConfirmPassword = TextEditingController();

  FocusNode nameFocusNode = FocusNode(),
      emailFocusNode = FocusNode(),
      passwordFocusNode = FocusNode(),
      confirmPasswordFocusNode = FocusNode();

  RxBool isObscureText = RxBool(true);
  RxBool isRegister = RxBool(false);

  void clearTextControllers() {
    ctrlEmail.clear();
    ctrlPassword.clear();
    ctrlName.clear();
    ctrlConfirmPassword.clear();
  }
}
