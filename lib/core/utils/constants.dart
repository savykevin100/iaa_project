import 'package:flutter/material.dart';

class Constant {
  Constant._();

  static String appName = "Budget";

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static String userImage =
      'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png';

  static String placeHolder = "http://placehold.jp/150x150.png";
}

class DataBase {}
