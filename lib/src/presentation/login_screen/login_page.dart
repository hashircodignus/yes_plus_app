import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/home_screen/home_page.dart';
import 'package:yes_plus/src/presentation/widget/button_widget.dart';
import 'package:yes_plus/src/presentation/widget/login_textfield.dart';
import 'package:yes_plus/src/utils/asset_resources.dart';
import 'package:yes_plus/src/utils/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPass = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppTheme.backColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 181.h,),
                  Container(
                    height: 107.h,
                    width: 177.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AssetResources.appLogo))
                    ),
                  ),
                  SizedBox(height: 107.h,),
                  LoginTextField(titleText: 'User Name',
                      prefixIcon: Icon(Icons.person_2_outlined,size: 20.sp,color: AppTheme.iconColor,)),
                  SizedBox(height: 20.h,),
                  LoginTextField(titleText: 'Password',
                    obscureText: showPass,
                    prefixIcon: Image.asset(AssetResources.passLock,scale: 3.sp,),
                    suffixIcon: IconButton(
                    onPressed: () {
                    setState(() {
                      showPass = !showPass;
                    });
                    },
                    icon:showPass == true
                        ? Icon( Icons.visibility_outlined,size: 20.sp,color: AppTheme.iconColor)
                        : Icon( Icons.visibility_off_outlined,size: 20.sp,color: AppTheme.iconColor),
                   ),),
                  SizedBox(height: 50.h,),
                   ButtonWidget(buttonTextContent: 'Login',onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context)=>const HomePage()));
                  },),
                  SizedBox(height: 30.h,),
                  RichText(text: TextSpan(
                    text: "Doesn't have an account?  " ,style: AppTheme.titleText,
                    children: [TextSpan(
                      text: "Contact",style: AppTheme.tapText
                    )]
                  )),
                  SizedBox(height: 40.h,),
                  Text("Version 10.00",style: AppTheme.smallText,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}