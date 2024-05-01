import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/theme.dart';

class DineInTitleWidget extends StatelessWidget {
  const DineInTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Padding(padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
            ),
              child: Container(
                height: 278.h,
                padding: EdgeInsets.symmetric(
                    horizontal: 20.w,vertical: 30.h),
                decoration: BoxDecoration(
                    color: AppTheme.backColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r)
                    )
                ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TYPE CHANGE",style: AppTheme.bottomBlackText,),
                        Text("X",style: AppTheme.bottomBlackText,),
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DINE IN",style: AppTheme.bottomBlackText,),
                        Icon(Icons.circle,size: 17.sp,color: Colors.green,)
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TAKEAWAY",style: AppTheme.bottomBlackText,),
                        Icon(Icons.circle_outlined,size: 17.sp,)
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DELIVERY",style: AppTheme.bottomBlackText,),
                        Icon(Icons.circle_outlined,size: 17.sp,)
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ORDER",style: AppTheme.bottomBlackText,),
                        Icon(Icons.circle_outlined,size: 17.sp,)
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        width: 276.w,
        height: 40.h,
        decoration: BoxDecoration(
            color: AppTheme.iconColor,
            borderRadius: BorderRadius.circular(57.r)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("DINE IN",style: AppTheme.buttonText,),
            const Icon(Icons.keyboard_arrow_down_rounded,color: AppTheme.backColor,)
          ],
        ),
      ),
    );
  }
}