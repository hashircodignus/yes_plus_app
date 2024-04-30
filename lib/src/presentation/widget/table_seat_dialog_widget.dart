import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/widget/secondary_button.dart';
import '../../utils/theme.dart';

class TableSeatDialogWidget extends StatefulWidget {
  const TableSeatDialogWidget({
    super.key,
  });

  @override
  State<TableSeatDialogWidget> createState() => _TableSeatDialogWidgetState();
}

class _TableSeatDialogWidgetState extends State<TableSeatDialogWidget> {
  List<bool> selectSeat = List.generate(8, (index) => false);
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 342.h,
        width: 320.w,
        decoration: BoxDecoration(
          color: AppTheme.backColor,
          borderRadius: BorderRadius.circular(8.r),
          // border: Border.all(color: AppTheme.textColor.withOpacity(0.3),width: 0.25)
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.w),
              height: 47.h,
              width: 320.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                  ),
                  color: AppTheme.tableContainerGreen
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Table no: T1",style: AppTheme.tableNoText,),
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.clear,color: AppTheme.backColor,size: 17.sp))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: selectSeat.every((state) => state),
                          onChanged: (value){
                        setState(() {
                          selectSeat = List.generate(8, (index) => value ?? false);
                          isSelected = selectSeat.contains(true);
                        });
                          },
                        activeColor: AppTheme.tableContainerGreen,
                        checkColor: AppTheme.backColor,
                        side: BorderSide(
                          width: 0.25.w,color: AppTheme.textColor
                        ),
                      ),
                      Text('Select All',style: AppTheme.lightText,)
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 20.w,
                    ),

                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      bool isBooked = [1,2,3,5].contains(index);
                      return GestureDetector(
                        onTap: (){
                          if(!isBooked) {
                            setState(() {
                              selectSeat[index] = !selectSeat[index];
                              isSelected = selectSeat.contains(true);
                            });
                          }
                        },
                        child: GridTile(child: Container(
                          height: 55.h,
                          width: 55.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: AppTheme.textColor.withOpacity(0.15.sp),width: 0.5.w),
                              color: isBooked ? AppTheme.timeRedColor : (selectSeat[index] ? AppTheme.timeYellowColor
                                  : AppTheme.backColor)
                          ),
                          child: Center(
                              child: Text('01',style: isBooked ? AppTheme.bottomText :
                              selectSeat[index] ? AppTheme.bottomText : AppTheme.bottomBlackText)),
                        )
                        ),
                      );
                    },

                  ),
                  SizedBox(height: 20.h,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle_outlined,size: 10.sp,color: AppTheme.lightColor.withOpacity(0.5.sp),),
                      SizedBox(width: 5.w,),
                      Text("Available",style: AppTheme.littleText,),
                      SizedBox(width: 12.w,),
                      Icon(Icons.circle,size: 10.sp,color: AppTheme.timeYellowColor,),
                      SizedBox(width: 5.w,),
                      Text("Selected",style: AppTheme.littleText,),
                      SizedBox(width: 12.w,),
                      Icon(Icons.circle,size: 10.sp,color: AppTheme.timeRedColor,),
                      SizedBox(width: 5.w,),
                      Text("Booked",style: AppTheme.littleText,),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 75.w,vertical: 20.h),
              child:  SecondaryButtonWidget(buttonTextContent: 'Submit',
              onPressed: (){
                Navigator.pop(context);
              },
              color: isSelected ? AppTheme.buttonColor : AppTheme.backColor, style:isSelected ? AppTheme.buttonText : AppTheme.buttonBlackText,
              ),
            )
          ],
        ),
      ),
    );
  }
}

