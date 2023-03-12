import 'package:andrea_project_mobile/theme/app_theme.dart';
import 'package:flutter/material.dart';

Container customButton({
  required Widget content,
  required Function function,
  double horizontalMargin = 0,
  double verticalMargin = 5,
}) =>
    Container(
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.black,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => function(),
          highlightColor: AppTheme.primariColor,
          splashColor: AppTheme.secondaryColor,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 25,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: content,
            ),
          ),
        ),
      ),
    );
