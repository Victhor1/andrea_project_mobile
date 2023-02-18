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
}) =>
    Container(
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
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
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusColor: Colors.red,
          filled: isFilled,
          fillColor: hintColor ?? Colors.grey[600],
          hintText: hintText,
          hintStyle: hintStyle ?? TextStyle(color: Colors.grey[200]),
          enabled: isEnabled,
          suffixIcon: suffixIcon,
        ),
      ),
    );
