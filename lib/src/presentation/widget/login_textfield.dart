import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/theme.dart';

class LoginTextField extends StatelessWidget {
  final String titleText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  const LoginTextField({
    required this.titleText,
    super.key, required this.prefixIcon, this.suffixIcon,  this.obscureText,
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
          Text(titleText,style: AppTheme.titleText,),
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
              obscuringCharacter: '*',
              cursorColor: AppTheme.textColor,
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
                contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                isDense: true,
              ),
            ),
          ),
        ],
      ),

    );
  }
}