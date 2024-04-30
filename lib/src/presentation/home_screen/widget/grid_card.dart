import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/utils/theme.dart';

class GridCard extends StatelessWidget {
  final String icon;
  final String text;
  final Function()? onTap;
  const GridCard({
    super.key, required this.icon, required this.text, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.backColor,
                borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color:Colors.black.withOpacity(0.05),
                  offset: Offset(1.r, 1.r),
                  blurRadius: 5.r,
                  spreadRadius: 3.r
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(-1.r, -1.r),
                  blurRadius: 5.r,
                  spreadRadius: 3.r,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(icon,width: 34.w,height: 34.h,),
                SizedBox(height: 20.h,),
                Text(text,style: AppTheme.cardText,)
              ],
            ),
          ),
        ));
  }
}