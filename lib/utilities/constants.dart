import 'package:flutter/material.dart';

BoxDecoration kRoundedCorner = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(32),
    topRight: Radius.circular(32),
  ),
  color: Colors.white,
);

BoxDecoration kStatisticsBoxDecoration = BoxDecoration(
  color: Colors.grey.shade200,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        offset: Offset(0, 3),
        blurRadius: 8.0,
        spreadRadius: 5.0),
  ],
);

BoxDecoration kItemsBoxDecoration = BoxDecoration(
  color: Colors.grey.shade200,
  borderRadius: BorderRadius.circular(8.0),
  boxShadow: [
    BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        offset: Offset(0, 3),
        blurRadius: 5.0,
        spreadRadius: 3.0),
  ],
);

SizedBox kItemMarginVertical = SizedBox(
  height: 8.0,
);

TextStyle kNameTextStyle = TextStyle(
  fontSize: 32,
  color: Colors.black,
);

TextStyle kPositiveTextStyle = TextStyle(
  fontSize: 8,
  color: Colors.black,
);
