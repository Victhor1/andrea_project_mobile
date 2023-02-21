import 'package:andrea_project_mobile/controllers/auth_controller.dart';
import 'package:andrea_project_mobile/screens/auth/components/forgot_password_first_state_component.dart';
import 'package:andrea_project_mobile/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetView<AuthController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        backAction: () => controller.resetForgotPasswordValues(),
      ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: Obx(
            () => forgotPasswordState(
              state: controller.forgotPasswordState.value,
            ),
          ),
        ),
      ),
    );
  }

  Widget forgotPasswordState({required int state}) {
    switch (state) {
      case 1:
        return const ForgotPasswordFirstStateComponent();
      case 2:
        return Container();
      default:
        return const SizedBox();
    }
  }
}
