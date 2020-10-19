import 'package:convince/utilities/constants.dart';
import 'package:flutter/material.dart';

Container roundedRectangle(Widget widget) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: kRoundedCorner,
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: widget,
    ),
  );
}
