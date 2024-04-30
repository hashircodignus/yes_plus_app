import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/theme.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonTextContent;
  const ButtonWidget({required this.buttonTextContent,this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 17.h,horizontal: 136.w),
        height: 56.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppTheme.buttonColor,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child: Text(buttonTextContent,style: AppTheme.buttonText,),
      ),
    );
  }
}
