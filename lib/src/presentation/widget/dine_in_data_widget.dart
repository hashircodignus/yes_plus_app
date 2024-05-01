import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/widget/dine_in_dialog_widget.dart';
import 'package:yes_plus/src/presentation/widget/table_seat_dialog_widget.dart';
import 'package:yes_plus/src/presentation/widget/takeaway_dialog_widget.dart';
import 'package:yes_plus/src/utils/asset_resources.dart';
import '../../utils/theme.dart';

class DineInDataWidget extends StatefulWidget {
  final bool? isDineIn;
  final bool? isTakeAway;
  final bool? isDelivery;
  const DineInDataWidget({
    super.key,  this.isDineIn,  this.isTakeAway, this.isDelivery,
  });

  @override
  State<DineInDataWidget> createState() => _DineInDataWidgetState();
}

class _DineInDataWidgetState extends State<DineInDataWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            SizedBox(
              height: 262.h,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Section-1",style: AppTheme.sectionText,),
                  SizedBox(height: 10.h,),
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 18.h,
                      crossAxisSpacing: 18.w,
                  ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                    bool isGreen = index % 3 == 0;
                    bool isRed = index.isEven && !isGreen;
                    bool isYellow = !index.isEven && !isGreen;
                    return GridTile(
                      child: GestureDetector(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context){
                            if(widget.isDineIn == true) {
                              return const DineInDialogWidget();
                            } else if(widget.isTakeAway == true){
                              return const TakeAwayDialogWidget();
                            }else if(widget.isDelivery == true){
                              return const TakeAwayDialogWidget();
                            } else {
                              return const TableSeatDialogWidget();
                            }
                          });
                        },
                        child: Container(
                          height: 106.h,
                          width: 95.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppTheme.backColor,
                              border: Border.all(color: AppTheme.textColor.withOpacity(0.4,),width: 0.25.w)
                          ),
                          child: Column(
                            children: [
                              Align( alignment: Alignment.topLeft,
                                child: Container(
                                  height: 20.h,
                                  width: 45.w,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r)),
                                      color:isYellow == true? AppTheme.timeYellowColor : (isRed == true ? AppTheme.timeRedColor :  AppTheme.timeGreenColor)
                                  ),
                                  child:  Row( mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.alarm_rounded,size: 10.sp,color: AppTheme.backColor,),
                                      SizedBox(width: 3.w,),
                                      Text(isYellow == true ? '30m' : (isRed == true ? '1hr' : '10m') ,style: AppTheme.timeCardText,)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h,),
                              Text('T1',style: AppTheme.tableNum,),
                              SizedBox(height: 3.h,),
                              widget.isDelivery == true ?
                              Text('Hrishi',style:AppTheme.lightText ,)
                              :Text('234',style:AppTheme.lightText ,),
                              SizedBox(height:7.h,),
                              Container(
                                height: 20.h,
                                width: 71.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: AppTheme.borderColor.withOpacity(0.25)
                                ),
                                child: Center(
                                  child: widget.isDineIn == true ?
                                  Text('Booked',style: AppTheme.seatRedText,)
                                      : (widget.isTakeAway ==true ?
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Image.asset(AssetResources.cash,scale: 3,),
                                     SizedBox(width: 2.w,),
                                     Text("1200",style: AppTheme.seatText,)
                                  ],) : Text('Seat: 10/09',style: AppTheme.seatText,))
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ); },
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
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 18.h,
                    crossAxisSpacing: 18.w,
                  ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      bool isGreen = index % 3 == 0;
                      bool isRed = index.isEven && !isGreen;
                      bool isYellow = !index.isEven && !isGreen;
                      return GridTile(
                        child: GestureDetector(
                          onTap: (){
                            showDialog(context: context, builder: (BuildContext context){
                              return const TableSeatDialogWidget();
                            });
                          },
                          child: Container(
                            height: 106.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppTheme.backColor,
                                border: Border.all(color: AppTheme.textColor.withOpacity(0.4,),width: 0.25.w)
                            ),
                            child: Column(
                              children: [
                                Align( alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20.h,
                                    width: 45.w,
                                    decoration:  BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r)),
                                        color:isYellow == true? AppTheme.timeYellowColor : (isRed == true ? AppTheme.timeRedColor :  AppTheme.timeGreenColor)
                                    ),
                                    child:  Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.alarm_rounded,size: 10.sp,color: AppTheme.backColor,),
                                        SizedBox(width: 3.w,),
                                        Text(isYellow == true ? '30m' : (isRed == true ? '1hr' : '10m') ,style: AppTheme.timeCardText,)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h,),
                                Text('T1',style: AppTheme.tableNum,),
                                SizedBox(height: 3.h,),
                                widget.isDelivery == true ?
                                Text('Hrishi',style:AppTheme.lightText ,)
                                    :Text('234',style:AppTheme.lightText ,),
                                SizedBox(height:7.h,),
                                Container(
                                  height: 20.h,
                                  width: 71.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      color: AppTheme.borderColor.withOpacity(0.25)
                                  ),
                                  child: Center(
                                      child: widget.isDineIn == true ?
                                      Text('Booked',style: AppTheme.seatRedText,)
                                          : (widget.isTakeAway ==true ?
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(AssetResources.cash,scale: 3,),
                                          SizedBox(width: 2.w,),
                                          Text("1200",style: AppTheme.seatText,)
                                        ],) : Text('Seat: 10/09',style: AppTheme.seatText,))
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ); },
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
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 18.h,
                    crossAxisSpacing: 18.w,
                  ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      bool isGreen = index % 3 == 0;
                      bool isRed = index.isEven && !isGreen;
                      bool isYellow = !index.isEven && !isGreen;
                      return GridTile(
                        child: GestureDetector(
                          onTap: (){
                            showDialog(context: context, builder: (BuildContext context){
                              return const TableSeatDialogWidget();
                            });
                          },
                          child: Container(
                            height: 106.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppTheme.backColor,
                                border: Border.all(color: AppTheme.textColor.withOpacity(0.4,),width: 0.25.w)
                            ),
                            child: Column(
                              children: [
                                Align( alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20.h,
                                    width: 45.w,
                                    decoration:  BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r)),
                                        color:isYellow == true? AppTheme.timeYellowColor : (isRed == true ? AppTheme.timeRedColor :  AppTheme.timeGreenColor)
                                    ),
                                    child:  Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.alarm_rounded,size: 10.sp,color: AppTheme.backColor,),
                                        SizedBox(width: 3.w,),
                                        Text(isYellow == true ? '30m' : (isRed == true ? '1hr' : '10m') ,style: AppTheme.timeCardText,)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h,),
                                Text('T1',style: AppTheme.tableNum,),
                                SizedBox(height: 3.h,),
                                widget.isDelivery == true ?
                                Text('Hrishi',style:AppTheme.lightText ,)
                                    :Text('234',style:AppTheme.lightText ,),
                                SizedBox(height:7.h,),
                                Container(
                                  height: 20.h,
                                  width: 71.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      color: AppTheme.borderColor.withOpacity(0.25)
                                  ),
                                  child: Center(
                                      child: widget.isDineIn == true ?
                                      Text('Booked',style: AppTheme.seatRedText,)
                                          : (widget.isTakeAway ==true ?
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(AssetResources.cash,scale: 3,),
                                          SizedBox(width: 2.w,),
                                          Text("1200",style: AppTheme.seatText,)
                                        ],) : Text('Seat: 10/09',style: AppTheme.seatText,))
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ); },
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
                  Text("Section-4",style: AppTheme.sectionText,),
                  SizedBox(height: 10.h,),
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 18.h,
                    crossAxisSpacing: 18.w,
                  ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      bool isGreen = index % 3 == 0;
                      bool isRed = index.isEven && !isGreen;
                      bool isYellow = !index.isEven && !isGreen;
                      return GridTile(
                        child: GestureDetector(
                          onTap: (){
                            showDialog(context: context, builder: (BuildContext context){
                              return const TableSeatDialogWidget();
                            });
                          },
                          child: Container(
                            height: 106.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppTheme.backColor,
                                border: Border.all(color: AppTheme.textColor.withOpacity(0.4,),width: 0.25.w)
                            ),
                            child: Column(
                              children: [
                                Align( alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20.h,
                                    width: 45.w,
                                    decoration:  BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r)),
                                        color:isYellow == true? AppTheme.timeYellowColor : (isRed == true ? AppTheme.timeRedColor :  AppTheme.timeGreenColor)
                                    ),
                                    child:  Row( mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.alarm_rounded,size: 10.sp,color: AppTheme.backColor,),
                                        SizedBox(width: 3.w,),
                                        Text(isYellow == true ? '30m' : (isRed == true ? '1hr' : '10m') ,style: AppTheme.timeCardText,)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h,),
                                Text('T1',style: AppTheme.tableNum,),
                                SizedBox(height: 3.h,),
                                widget.isDelivery == true ?
                                Text('Hrishi',style:AppTheme.lightText ,)
                                    :Text('234',style:AppTheme.lightText ,),
                                SizedBox(height:7.h,),
                                Container(
                                  height: 20.h,
                                  width: 71.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      color: AppTheme.borderColor.withOpacity(0.25)
                                  ),
                                  child: Center(
                                      child: widget.isDineIn == true ?
                                      Text('Booked',style: AppTheme.seatRedText,)
                                          : (widget.isTakeAway ==true ?
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(AssetResources.cash,scale: 3,),
                                          SizedBox(width: 2.w,),
                                          Text("1200",style: AppTheme.seatText,)
                                        ],) : Text('Seat: 10/09',style: AppTheme.seatText,))
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ); },
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}