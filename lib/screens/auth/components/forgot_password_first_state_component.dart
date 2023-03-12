import 'package:andrea_project_mobile/controllers/auth_controller.dart';
import 'package:andrea_project_mobile/models/regex_validator_model.dart';
import 'package:andrea_project_mobile/theme/app_theme.dart';
import 'package:andrea_project_mobile/utils/messages_utils.dart';
import 'package:andrea_project_mobile/utils/regex_utils.dart';
import 'package:andrea_project_mobile/widgets/custom_button.dart';
import 'package:andrea_project_mobile/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordFirstStateComponent extends GetView<AuthController> {
  const ForgotPasswordFirstStateComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Ingresa el correo electronico con el que te registraste',
          style: TextStyle(
            color: AppTheme.white,
          ),
        ),
        Form(
          key: controller.forgotPasswordEmail,
          autovalidateMode: AutovalidateMode.always,
          child: customTextFormField(
            key: const Key('email'),
            focusNode: controller.emailFocusNode,
            controller: controller.ctrlEmail,
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            //onEditingCompletefocusNode: controller.passwordFocusNode,
            validators: [
              RegexValidatorModel(
                regex: RegexUtils.emailRegex,
                message: MessagesUtils.invalidEmailMessage,
              ),
            ],
          ),
        ),
        customButton(
          content: Text(
            'siguiente',
            style: TextStyle(
              color: AppTheme.white,
            ),
          ),
          function: () => controller.forgotPasswordState.value = 2,
        ),
      ],
    );
  }
}
