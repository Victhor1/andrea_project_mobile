import 'package:andrea_project_mobile/theme/app_theme.dart';
import 'package:flutter/material.dart';

IconButton customIconButton({
  required Function onPressed,
  required IconData icon,
}) =>
    IconButton(
      color: AppTheme.white,
      onPressed: () => onPressed(),
      icon: Icon(icon),
    );
