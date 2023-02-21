import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  GlobalKey<FormState> authFormKey = GlobalKey<FormState>(),
      forgotPasswordEmail = GlobalKey<FormState>();

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
  RxInt forgotPasswordState = RxInt(1);

  void clearTextControllers() {
    ctrlEmail.clear();
    ctrlPassword.clear();
    ctrlName.clear();
    ctrlConfirmPassword.clear();
  }

  void resetForgotPasswordValues() {
    forgotPasswordState.value = 1;
    clearTextControllers();
  }
}
