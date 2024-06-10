import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    left: TSize.defaultSpace,
    bottom: TSize.defaultSpace,
    right: TSize.defaultSpace,
  );
}
