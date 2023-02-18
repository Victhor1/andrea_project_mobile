import 'package:flutter/material.dart';

IconButton customIconButton({
  required Function onPressed,
  required IconData icon,
}) =>
    IconButton(
      color: Colors.grey[200],
      onPressed: () => onPressed(),
      icon: Icon(icon),
    );
