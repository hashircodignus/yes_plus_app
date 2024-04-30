import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/theme.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonTextContent;
  final Color color;
  const ButtonWidget({required this.buttonTextContent,this.onPressed,
    super.key, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child: Center(child: Text(buttonTextContent,style: AppTheme.buttonText,)),
      ),
    );
  }
}
