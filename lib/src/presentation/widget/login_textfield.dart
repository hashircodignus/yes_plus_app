import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/theme.dart';

class LoginTextField extends StatelessWidget {
  final String titleText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  const LoginTextField({
    required this.titleText,
    super.key,  this.prefixIcon, this.suffixIcon,  this.obscureText, this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: double.infinity,
      color: AppTheme.backColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titleText,style: TextStyle(
              color: AppTheme.textColor,
              fontFamily: 'Montserrat',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400)),
          Container(
            decoration: BoxDecoration(
             // color: AppTheme.backColor,
             //    boxShadow: [BoxShadow(
             //        color: const Color(0xff000000).withOpacity(0.03),
             //        blurRadius: 5.r,
             //      spreadRadius: 1.r
             //    )]
            ),
            height: 56.h,
            child: TextFormField(
              obscureText: obscureText ?? false,
              keyboardType: keyboardType ?? TextInputType.name,
              obscuringCharacter: '*',
              cursorColor: AppTheme.textColor,
              style:  TextStyle(
                  color: AppTheme.textColor,
                  fontFamily:'Montserrat',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppTheme.borderColor,width: 0.5.w)
                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppTheme.borderColor,width: 0.5.w)
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 20.w),
                isDense: true,
              ),
            ),
          ),
        ],
      ),

    );
  }
}