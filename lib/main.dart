import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/payment_screen/payment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black)
    );
    return ScreenUtilInit(
      builder: (_,child) {
       return MaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
           useMaterial3: true,
         ),
         home: const PaymentPage(),
         debugShowCheckedModeBanner: false,
       );
      },
      designSize: const Size(360, 800),
    );

  }

}