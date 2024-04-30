import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/widget/button_widget.dart';
import 'package:yes_plus/src/utils/asset_resources.dart';
import 'package:yes_plus/src/utils/theme.dart';

import '../home_screen/widget/grid_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(preferredSize: Size.square(131.h), child:
        Container(
          height: 180.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  const Color(0xFF013B00).withOpacity(0.7),
                  const Color(0xFF013B00),
                ],
            stops: const [0.0,1.0],
            )
          ),
          child:  Column(
            children: [
              SizedBox(height: 20.h,),
               Align(
                  alignment:const Alignment(-0.85, 0),
                  child:  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back,color: AppTheme.backColor,))),
              SizedBox(height: 25.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetResources.cashWhite,scale: 3,),
                  SizedBox(width: 5.w,),
                  Text('952',style: AppTheme.largeNoText,)
                ],
              ),
            ],
          ),
        )
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text('Payment Via',style: AppTheme.sectionText,),
            SizedBox(height: 20.h,),
            Container(
              height: 275.h,
              child: GridView(
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 20.w),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const <Widget> [
                  GridCard(icon: AssetResources.cashIcon, text: 'Cash',),
                  GridCard(icon: AssetResources.card, text: 'Card',),
                  GridCard(icon: AssetResources.other, text: 'Other',),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: 50.h,left: 20.w,right: 20.w),
        child: const ButtonWidget(buttonTextContent: 'Proceed', color: AppTheme.tableContainerGreen,),
      ),
    );
  }
}
