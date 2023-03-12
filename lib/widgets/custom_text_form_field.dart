import 'package:andrea_project_mobile/models/regex_validator_model.dart';
import 'package:andrea_project_mobile/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container customTextFormField({
  required Key key,
  required TextEditingController controller,
  required TextInputType textInputType,
  required TextInputAction textInputAction,
  required FocusNode? focusNode,
  FocusNode? onEditingCompletefocusNode,
  double borderRadius = 15,
  bool isObscure = false,
  bool isFilled = true,
  String? hintText,
  TextStyle? hintStyle,
  Color? hintColor,
  bool isEnabled = true,
  IconButton? suffixIcon,
  double horizontalMargin = 0,
  double verticalMargin = 5,
  bool isRequired = true,
  List<RegexValidatorModel>? validators,
}) =>
    Container(
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        validator: (value) {
          if (isRequired && value!.isEmpty) {
            return 'required value';
          }

          if (validators == null) return null;

          for (RegexValidatorModel data in validators) {
            RegExp regex = RegExp('${data.regex}');
            if (!regex.hasMatch('$value')) return data.message;
          }

          return null;
        },
        obscureText: isObscure,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        style: TextStyle(color: Colors.grey[100]),
        onFieldSubmitted: (e) => onEditingCompletefocusNode != null
            ? FocusScope.of(Get.context!).requestFocus(
                onEditingCompletefocusNode,
              )
            : null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400] as Color,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.hardRed,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusColor: AppTheme.hardRed,
          filled: isFilled,
          fillColor: hintColor ?? Colors.grey[600],
          hintText: hintText,
          hintStyle: hintStyle ?? TextStyle(color: Colors.grey[200]),
          enabled: isEnabled,
          suffixIcon: suffixIcon,
        ),
      ),
    );
