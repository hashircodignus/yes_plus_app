import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/utils/asset_resources.dart';
import 'package:yes_plus/src/utils/theme.dart';

class CompletedDeliveryWidget extends StatelessWidget {
  const CompletedDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        color: AppTheme.backColor,
        width: double.infinity,
        child: SingleChildScrollView(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index){
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                height: 110.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppTheme.backColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppTheme.textColor.withOpacity(0.2)),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.iconColor.withOpacity(0.02),
                        spreadRadius: 3.r,
                        blurRadius: 5.r,
                        offset: const Offset(1, 1),
                      ),
                      BoxShadow(
                        color: AppTheme.textColor.withOpacity(0.02),
                        spreadRadius: 3.r,
                        blurRadius: 5.r,
                        offset: const Offset(-1, -1),
                      ),
                    ]
                ),
                child: Column(
                  children: [
                    //    Icon(Icons.left)
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('#43435',style: AppTheme.completedNum,),
                        Row(
                          children: [
                            Image.asset(AssetResources.cashGreen,scale: 4,),
                            Text('1200',style: AppTheme.tableNumGreen,)
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time,color: AppTheme.tableContainerGreen,size: 15.sp,),
                        SizedBox(width: 5.w,),
                        Text('12-10-2023  12:10 PM',style: AppTheme.bottomBlackText,),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 28.h,
                          width: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.r),
                            color: Colors.red,
                          ),
                          child: Icon(Icons.print_outlined,color: AppTheme.backColor,size: 16.sp,),
                        ),
                        SizedBox(width: 20.w,),
                        Container(
                          height: 28.h,
                          width: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.r),
                            color: const Color(0xffE0B000),
                          ),
                          child: Icon(Icons.visibility_outlined,color: AppTheme.backColor,size: 16.sp,),
                        ),
                      ],
                    )

                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 20.h,);
          },
          ),
        ),
      ),
    );
  }
}
