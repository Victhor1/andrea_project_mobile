import 'package:andrea_project_mobile/utils/horientation_utils.dart';
import 'package:flutter/material.dart';

SizedBox spacerWidget({
  required int horientation,
  required double spacing,
}) {
  if (horientation == HorientationUtils.vertical) {
    return SizedBox(height: spacing);
  }

  if (horientation == HorientationUtils.horizontal) {
    return SizedBox(width: spacing);
  }

  if (horientation == HorientationUtils.allHorientation) {
    return SizedBox(
      width: spacing,
      height: spacing,
    );
  }

  return const SizedBox();
}
