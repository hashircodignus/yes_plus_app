import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/payment_screen/payment_page.dart';
import 'package:yes_plus/src/presentation/print_bill_screen/print_bill_page.dart';
import '../../utils/asset_resources.dart';
import '../../utils/theme.dart';
import '../home_screen/widget/grid_card.dart';

class TakeAwayDialogWidget extends StatefulWidget {
  const TakeAwayDialogWidget({
    super.key,
  });

  @override
  State<TakeAwayDialogWidget> createState() => _TakeAwayDialogWidgetState();
}

class _TakeAwayDialogWidgetState extends State<TakeAwayDialogWidget> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 283.h,
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
            SizedBox(height: 13.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GridView(
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.2,
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.h,
                        crossAxisSpacing: 20.w),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: <Widget> [
                      const GridCard(icon: AssetResources.viewKOT,
                        text: 'View KOT',),
                      GridCard(icon: AssetResources.printBill, text: 'Print Bill', onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrintBillPage()));
                      },
                      ),
                      GridCard(icon: AssetResources.printPay, text: 'Print & Pay',onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage()));
                      }),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.h,),
          ],
        ),
      ),
    );
  }
}

