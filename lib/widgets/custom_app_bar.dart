import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar customAppBar({
  String title = '',
}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 18,
        ),
      ),
    );
