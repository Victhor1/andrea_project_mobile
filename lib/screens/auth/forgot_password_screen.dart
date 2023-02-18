import 'package:andrea_project_mobile/controllers/auth_controller.dart';
import 'package:andrea_project_mobile/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetView<AuthController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Forgot password'),
      backgroundColor: Colors.grey[900],
      body: const SafeArea(
        child: Center(
          child: Text('FORGOT PASSWORD'),
        ),
      ),
    );
  }
}
