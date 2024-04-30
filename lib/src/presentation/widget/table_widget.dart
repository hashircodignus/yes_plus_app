import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/widget/table_seat_dialog_widget.dart';
import '../../utils/theme.dart';

class TableWidget extends StatelessWidget {
  final Color timeColor;
  final String time;
  final String tableNum;
  final String bookingNum;
  final String seatNum;
  final bool? isTime;
  const TableWidget({
    super.key, required this.timeColor, required this.time, required this.tableNum, required this.bookingNum, required this.seatNum, this.isTime,
  });

  @override
  Widget build(BuildContext context) {
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
              isTime == true ?
              Align( alignment: Alignment.topLeft,
                child: Container(
                  height: 20.h,
                  width: 45.w,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r)),
                      color: timeColor
                  ),
                  child:  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.alarm_rounded,size: 10.sp,color: AppTheme.backColor,),
                      SizedBox(width: 3.w,),
                      Text(time,style: AppTheme.timeCardText,)
                    ],
                  ),
                ),
              ) :  SizedBox(height: 20.h,),
              SizedBox(height: 2.h,),
              Text(tableNum,style: AppTheme.tableNum,),
              SizedBox(height: 3.h,),
              Text(bookingNum,style:AppTheme.lightText ,),
              SizedBox(height:7.h,),
              Container(
                height: 20.h,
                width: 71.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppTheme.borderColor.withOpacity(0.25)
                ),
                child: Center(
                  child: Text(seatNum,style: AppTheme.seatText,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

