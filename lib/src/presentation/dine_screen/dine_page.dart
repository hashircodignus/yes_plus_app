import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/dine_screen/widget/dinein_title_widget.dart';
import 'package:yes_plus/src/utils/theme.dart';

import '../widget/table_widget.dart';

class DinePage extends StatelessWidget {
  const DinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        title: const DineInTitleWidget(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 262.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Section-1",style: AppTheme.sectionText,),
                    SizedBox(height: 10.h,),
                    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 18.h,
                      crossAxisSpacing: 18.w
                    ),
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T1', bookingNum: '213', seatNum: 'Seat:10/08',),
                        TableWidget(timeColor: AppTheme.timeYellowColor, time: '30m', tableNum: 'T2', bookingNum: '312', seatNum: 'Seat:10/09',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T3', bookingNum: '104', seatNum: 'Seat:10/10',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T4', bookingNum: '105', seatNum: 'Seat:10/10',),
                        TableWidget(timeColor: AppTheme.timeRedColor, time: '1hr', tableNum: 'T5', bookingNum: '123', seatNum: 'Seat:10/09',),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 18.h,),
              Container(
                height: 140.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Section-2",style: AppTheme.sectionText,),
                    SizedBox(height: 10.h,),
                    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 18.h,
                      crossAxisSpacing: 18.w
                    ),
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T1', bookingNum: '789', seatNum: 'Seat:10/08',),
                        TableWidget(timeColor: AppTheme.timeYellowColor, time: '30m', tableNum: 'T2', bookingNum: '454', seatNum: 'Seat:10/09',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T3', bookingNum: '456', seatNum: 'Seat:10/10',),

                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 18.h,),
              Container(
                height: 262.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Section-3",style: AppTheme.sectionText,),
                    SizedBox(height: 10.h,),
                    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.9,
                        mainAxisSpacing: 18.h,
                        crossAxisSpacing: 18.w
                    ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T1', bookingNum: '454', seatNum: 'Seat:10/08',),
                        TableWidget(timeColor: AppTheme.timeYellowColor, time: '30m', tableNum: 'T2', bookingNum: '456', seatNum: 'Seat:10/09',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T3', bookingNum: '457', seatNum: 'Seat:10/10',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T4', bookingNum: '121', seatNum: 'Seat:10/10',),
                        TableWidget(timeColor: AppTheme.timeRedColor, time: '1hr', tableNum: 'T5', bookingNum: '321', seatNum: 'Seat:10/09',),
                        TableWidget(timeColor: AppTheme.timeRedColor, time: '10m', tableNum: 'T6', bookingNum: '123', seatNum: 'Seat:10/08',),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 18.h,),
              Container(
                height: 262.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Section-3",style: AppTheme.sectionText,),
                    SizedBox(height: 10.h,),
                    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.9,
                        mainAxisSpacing: 18.h,
                        crossAxisSpacing: 18.w
                    ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T1', bookingNum: '785', seatNum: 'Seat:10/08',),
                        TableWidget(timeColor: AppTheme.timeYellowColor, time: '30m', tableNum: 'T2', bookingNum: '412', seatNum: 'Seat:10/09',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T3', bookingNum: '356', seatNum: 'Seat:10/10',),
                        TableWidget(timeColor: AppTheme.timeGreenColor, time: '10m', tableNum: 'T4', bookingNum: '121', seatNum: 'Seat:10/10',),

                      ],
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



