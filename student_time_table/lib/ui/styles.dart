import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  // Comment
  static const Color transparent = Color.fromARGB(0, 0, 0, 0);
  static const Color iconButtonColor = CupertinoColors.systemPurple;

  static const TextStyle navigationBarTitle = TextStyle(
      color: CupertinoColors.black,
      fontSize: 24,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);

  // Time table
  static const Color timeTableBackground = CupertinoColors.lightBackgroundGray;
  static const Color timeTableBorder = CupertinoColors.inactiveGray;
  static const Color timeTableTextCursor = CupertinoColors.black;

  static const TextStyle timeTableDayTitle = TextStyle(
      color: CupertinoColors.systemPurple,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontFamily: 'Mali');

  static const TextStyle timeTableHeadTitle = TextStyle(
      color: CupertinoColors.black,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontFamily: 'Mali');

  static const TextStyle timeTableContent = TextStyle(
      color: CupertinoColors.black,
      fontSize: 15,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontFamily: 'Mali');

  static const TextStyle unreadMessage = TextStyle(fontWeight: FontWeight.bold);

  static const TextStyle readMessage = TextStyle(fontWeight: FontWeight.normal);
}
