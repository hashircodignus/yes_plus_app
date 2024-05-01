import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  static const Color backColor = Colors.white;
  static const Color buttonColor = Color(0xff013C00);
  static const Color textColor = Color(0xff1C1B1F);
  static const Color borderColor = Color(0xff7D7D7D);
  static const Color iconColor = Color(0xff013B00);
  static const Color lightColor = Color(0xff696969);
  static const Color timeGreenColor = Color(0xff026E00);
  static const Color tableContainerGreen = Color(0xff245624);
  static const Color timeYellowColor = Color(0xffE0B000);
  static const Color timeRedColor = Color(0xffAB0303);


 // static final montserratFont = GoogleFonts.montserrat();

  static TextStyle timeCardText = TextStyle(
      color: backColor,
      fontFamily: 'Montserrat',
      fontSize: 8.sp,
      fontWeight: FontWeight.w400);

  static TextStyle littleText = TextStyle(
      color: textColor,
      fontFamily: 'Montserrat',
      fontSize: 8.sp,
      fontWeight: FontWeight.w400);

  static TextStyle seatText = TextStyle(
      color: iconColor,
      fontFamily: 'Montserrat',
      fontSize: 10.sp,
      fontWeight: FontWeight.w400);

  static TextStyle seatRedText = TextStyle(
      color: timeRedColor,
      fontFamily: 'Montserrat',
      fontSize: 10.sp,
      fontWeight: FontWeight.w400);

  // static TextStyle smallText = TextStyle(
  //     color: iconColor,
  //     fontFamily: 'Montserrat',
  //     fontSize: 12.sp,
  //     fontWeight: FontWeight.w300);

  static TextStyle textSmall = TextStyle(
    color: iconColor,
    fontFamily:'Montserrat',
    fontSize: 12.sp,
    fontWeight: FontWeight.w300);

  static TextStyle cardText = TextStyle(
      color: textColor,
      fontFamily: 'Montserrat',
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

  static TextStyle cardWhiteText = TextStyle(
      color: backColor,
      fontFamily: 'Montserrat',
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

  static TextStyle lightText = TextStyle(
      color: lightColor,
      fontFamily: 'Montserrat',
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

  // static TextStyle titleText = TextStyle(
  //     color: textColor,
  //     fontFamily: 'Montserrat',
  //     fontSize: 14.sp,
  //     fontWeight: FontWeight.w300);

  static TextStyle textTitle = TextStyle(
    color: textColor,
    fontFamily:'Montserrat',
    fontSize: 14.sp,
    fontWeight: FontWeight.w300);

  static TextStyle titleWhiteText = TextStyle(
      color: backColor,
      fontFamily: 'Montserrat',
      fontSize: 14.sp,
      fontWeight: FontWeight.w300);

  static TextStyle tableNoText = TextStyle(
      color: backColor,
      fontFamily: 'Montserrat',
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

  // static TextStyle tapText = TextStyle(
  //     color: iconColor,
  //     fontFamily: 'Montserrat',
  //     fontSize: 14.sp,
  //     fontWeight: FontWeight.w500);

  static TextStyle textTap = TextStyle(
    color: iconColor,
    fontFamily:'Montserrat',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500);

  static TextStyle bottomText = TextStyle(
      color: backColor,
      fontFamily: 'Montserrat',
      fontSize: 14.sp,
      fontWeight: FontWeight.w500);

  static TextStyle bottomBlackText = TextStyle(
      color: textColor,
      fontFamily: 'Montserrat',
      fontSize: 14.sp,
      fontWeight: FontWeight.w500);

  // static TextStyle buttonText = TextStyle(
  //     color: backColor,
  //     fontFamily:'Montserrat',
  //     fontSize: 16.sp,
  //     fontWeight: FontWeight.w500);

  static TextStyle textButton = TextStyle(
    color: backColor,
    fontFamily:'Montserrat',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500);

  static TextStyle buttonLightText = TextStyle(
      color: lightColor,
      fontFamily:'Montserrat',
      fontSize: 16.sp,
      fontWeight: FontWeight.w400);

  // static TextStyle buttonBlackText = TextStyle(
  //     color: textColor,
  //     fontFamily:'Montserrat',
  //     fontSize: 16.sp,
  //     fontWeight: FontWeight.w500);

  static TextStyle blackTextButton = TextStyle(
    color: textColor,
    fontFamily:'Montserrat',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500);

  static TextStyle sectionText = TextStyle(
      color: textColor,
      fontFamily:'Montserrat',
      fontSize: 16.sp,
      fontWeight: FontWeight.w700);

  static TextStyle completedNum = TextStyle(
      color: textColor,
      fontFamily:'Montserrat',
      fontSize: 18.sp,
      fontWeight: FontWeight.w400);

  static TextStyle tableNum = TextStyle(
      color: textColor,
      fontFamily:'Montserrat',
      fontSize: 18.sp,
      fontWeight: FontWeight.w600);

  static TextStyle tableNumGreen = TextStyle(
      color: tableContainerGreen,
      fontFamily:'Montserrat',
      fontSize: 18.sp,
      fontWeight: FontWeight.w600);

  static TextStyle appBarText = TextStyle(
      color: iconColor,
      fontFamily:'Montserrat',
      fontSize: 20.sp,
      fontWeight: FontWeight.w500);

  static TextStyle drawerText = TextStyle(
      color: backColor,
      fontFamily:'Montserrat',
      fontSize: 20.sp,
      fontWeight: FontWeight.w500);

  static TextStyle largeNoText = TextStyle(
      color: backColor,
      fontFamily: 'Montserrat',
      fontSize: 35.sp,
      fontWeight: FontWeight.w500);
}