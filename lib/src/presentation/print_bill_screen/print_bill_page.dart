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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  const Color(0xFF013B00).withOpacity(0.7),
                  const Color(0xFF013B00),
                ],
                stops: const [0.0, 1.0],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 40.h,),
                  Align(
                    alignment: const Alignment(-0.85, 0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back,color: AppTheme.backColor,),
                    ),
                  ),
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
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            Divider(color: AppTheme.backColor.withOpacity(0.35)),
                            SizedBox(height: 12.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Table Number:',style: AppTheme.textButton,),
                                Text('T1',style: AppTheme.textButton,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const LoginTextField(titleText: 'Mobile Number',),
              SizedBox(height: 20.h,),
              const LoginTextField(titleText: 'Customer Name',),
              SizedBox(height: 20.h,),
              const LoginTextField(titleText: 'Pax',keyboardType: TextInputType.number,),
            ],
          ),
        )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 50.h),
        child: Row(
          children: [
            Expanded(
              child: ButtonWidget(
                buttonTextContent: 'Cancel',
                color: AppTheme.timeRedColor,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage(),), (route) => false);
                },
              ),
            ),
            SizedBox(width: 20.w,),
            Expanded(
              child: ButtonWidget(
                buttonTextContent: 'Submit',
                color: AppTheme.tableContainerGreen,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SuccessPage(),), (route) => false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
