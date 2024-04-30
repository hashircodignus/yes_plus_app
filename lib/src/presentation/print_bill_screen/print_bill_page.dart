import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/home_screen/home_page.dart';
import 'package:yes_plus/src/presentation/widget/button_widget.dart';
import 'package:yes_plus/src/presentation/widget/login_textfield.dart';
import '../../utils/theme.dart';
import '../widget/success_page.dart';

class PrintBillPage extends StatelessWidget {
  const PrintBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(preferredSize: Size.square(200.h),
            child: Container(
          height: 243.h,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   CircleAvatar(
                    radius: 35.r,
                    backgroundColor: AppTheme.backColor,
                     child: Center(
                       child: Icon(Icons.person_outlined,size: 30.sp,),
                     ),
                                     ),
                  SizedBox(height: 20.h,),
                  Text('CUSTOMER INFORMATION',style: AppTheme.titleWhiteText,),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Divider(color: AppTheme.backColor.withOpacity(0.35)),
                        SizedBox(height: 12.h,),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Table Number:',style: AppTheme.buttonText,),
                            Text('T1',style: AppTheme.buttonText,),
                          ],
                        )
                      ],
                    ),
                  ),
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
        child:  Column(
          children: [
            SizedBox(height: 20.h,),
            const LoginTextField(titleText: 'Mobile Number',),
            SizedBox(height: 20.h,),
            const LoginTextField(titleText: 'Customer Name',),
            SizedBox(height: 20.h,),
            const LoginTextField(titleText: 'Pax',),
          ],
        ),
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 50.h),
      child:  Row(
        children: [
           Expanded(child: ButtonWidget(buttonTextContent: 'Cancel', color: AppTheme.timeRedColor,onPressed: (){
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomePage(),), (route) => false);
           },)),
          SizedBox(width: 20.w,),
           Expanded(child: ButtonWidget(buttonTextContent: 'Submit', color: AppTheme.tableContainerGreen,onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const SuccessPage(),), (route) => false);
          },))
        ],
      ),
      ),
    );
  }
}
