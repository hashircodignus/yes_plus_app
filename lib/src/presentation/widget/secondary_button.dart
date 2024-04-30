import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/theme.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonTextContent;
  final Color? color;
  final TextStyle style;
  const SecondaryButtonWidget({required this.buttonTextContent,this.onPressed,
    super.key, this.color, required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 39.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppTheme.lightColor,width: 0.25),
            color: color,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child: Center(child: Text(buttonTextContent,style: style)),
      ),
    );
  }
}
