import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';
import 'dart:math' as math;

class AppFunctions {
  static navigateToPage({required BuildContext context, required Widget page}) {
    if (Platform.isIOS) {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => page),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    }
  }

  static navigateToPageCustomAnimation({
    required BuildContext context,
    required Widget page,
    bool isDialog = false,
  }) {
    Navigator.push(
      context,
      PageTransition(
        fullscreenDialog: isDialog,
        type: PageTransitionType.fade,
        child: page,
        duration: const Duration(milliseconds: 300),
      ),
    );
  }

  static String parseDateTimeToHumanReadable(
      {required DateTime? dateTime, required String nullText}) {
    if (dateTime == null) {
      return nullText;
    } else {
      String formattedDate = DateFormat('d MMM, yyyy').format(dateTime);
      return formattedDate;
    }
  }

  static String parseDateTimeToHumanReadableTime(
      {required DateTime? dateTime, required String nullText}) {
    if (dateTime == null) {
      return nullText;
    } else {
      String formattedDate = DateFormat('HH:MM').format(dateTime);
      return formattedDate;
    }
  }

  static String supabaseTimeStampToDateTime(var value) {
    // if (value == null) return null;
    DateTime date = DateTime.parse(value);

    String formattedDate = DateFormat('d MMM, yyyy HH:MM').format(date);

    print("formattedDate $formattedDate");

    return formattedDate;
  }

  static DateTime? toDateTime(var value) {
    if (value == null) return null;
    return DateTime.parse(value);
  }

  static dynamic fromDateTimeToJson(DateTime? date) {
    if (date == null) return null;

    return date.toUtc();
  }

  static formatDateTimeToTimeAgo({required DateTime dateTime}) {
    return timeago.format(dateTime);
  }

  static String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      // print('Please enter mobile number');
      // return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      // print("Please enter valid mobile number");
      // return 'Please enter valid mobile number';
    }
    return "";
  }

  // VALIDATOR FUNCTIONS
  static String? validateEmptyString(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  static String? validateEmptyDateTime(DateTime? value) {
    if (value == null) {
      return 'Date is required';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    RegExp exp = RegExp(
      r"^[\w-.]+@([\w-]+.)+[\w-]{2,4}$",
      caseSensitive: false,
      multiLine: false,
    );
    if (value == null) {
      return 'Filed is required';
    }

    if (!exp.hasMatch(value.trim())) {
      return 'Invalid email address';
    }

    return null;
  }

  static int getColorHexFromStr(String colorStr) {
    colorStr = "FF$colorStr";
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // A..F
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException("An error occurred when converting a color");
      }
    }

    return val;
  }

  static String returnText(String? data) {
    if (data == null) {
      return "N/A";
    } else {
      return data;
    }
  }

  static String returnTextWithNullValue(
      {required String? data, required String nullText}) {
    if (data == null || data.isEmpty) {
      return nullText;
    } else {
      return data;
    }
  }

  static String returnIntWithNullValue(
      {required int? data, required String nullText}) {
    if (data == null) {
      return nullText;
    } else {
      return data.toString();
    }
  }

  static String returnNumWithNullValue(
      {required num? data, required String nullText}) {
    if (data == null) {
      return nullText;
    } else {
      return data.toString();
    }
  }

  static showSnackBar({
    required BuildContext context,
    required String message,
    int durationInSecs = 4,
    double fontSize = 12,
    Color backgroundColor = const Color(0xFFB7221F),
  }) {
    final SnackBar snackBar = SnackBar(
      backgroundColor: backgroundColor,
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: fontSize),
      ),
      duration: Duration(seconds: durationInSecs),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static showToast({
    required BuildContext context,
    required String message,
    Color backgroundColor = const Color(0xff005b9b),
    Color textColor = Colors.white,
    ToastGravity gravity = ToastGravity.CENTER,
    Toast toastLength = Toast.LENGTH_SHORT,
    double fontSize = 16,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize,
    );
  }

  static screenPortrait() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  }

  Color getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
  }

  // static int createUniqueNotificationID() {
  //   return DateTime.now()
  //       .millisecondsSinceEpoch
  //       .remainder(AwesomeNotifications.maxID);
  // }

  static int createUniqueNotificationID() {
    return DateTime.now().millisecondsSinceEpoch.remainder(11);
  }
}
