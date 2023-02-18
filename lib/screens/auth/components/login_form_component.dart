import 'package:andrea_project_mobile/controllers/auth_controller.dart';
import 'package:andrea_project_mobile/widgets/custom_icon_button.dart';
import 'package:andrea_project_mobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormComponent extends GetView<AuthController> {
  const LoginFormComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Visibility(
            visible: controller.isRegister.value,
            child: customTextFormField(
              key: const Key('name'),
              focusNode: controller.nameFocusNode,
              controller: controller.ctrlName,
              hintText: 'Name',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
              onEditingCompletefocusNode: controller.emailFocusNode,
            ),
          ),
        ),
        customTextFormField(
          key: const Key('email'),
          focusNode: controller.emailFocusNode,
          controller: controller.ctrlEmail,
          hintText: 'Email',
          textInputType: TextInputType.text,
          textInputAction: TextInputAction.next,
          onEditingCompletefocusNode: controller.passwordFocusNode,
        ),
        Obx(
          () => customTextFormField(
            key: const Key('password'),
            focusNode: controller.passwordFocusNode,
            controller: controller.ctrlPassword,
            hintText: 'Password',
            isObscure: controller.isObscureText.value,
            textInputType: TextInputType.text,
            textInputAction: controller.isRegister.value
                ? TextInputAction.next
                : TextInputAction.done,
            onEditingCompletefocusNode: controller.isRegister.value
                ? controller.confirmPasswordFocusNode
                : null,
            suffixIcon: customIconButton(
              onPressed: () => controller.isObscureText.value =
                  !controller.isObscureText.value,
              icon: !controller.isObscureText.value
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
            ),
          ),
        ),
        Obx(
          () => Visibility(
            visible: controller.isRegister.value,
            child: customTextFormField(
              key: const Key('confirmPassword'),
              focusNode: controller.confirmPasswordFocusNode,
              controller: controller.ctrlConfirmPassword,
              hintText: 'Confirm password',
              isObscure: controller.isObscureText.value,
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.done,
              suffixIcon: customIconButton(
                onPressed: () => controller.isObscureText.value =
                    !controller.isObscureText.value,
                icon: !controller.isObscureText.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
              ),
            ),
          ),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Visibility(
                visible: !controller.isRegister.value,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () => Get.toNamed('/forgot-password'),
                    child: Text(
                      'Olvidaste tu contraseña?',
                      style: TextStyle(color: Colors.grey[100]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
