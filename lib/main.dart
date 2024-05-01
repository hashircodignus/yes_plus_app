import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/login_screen/login_page.dart';

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
           fontFamily: 'Montserrat',
           appBarTheme: const AppBarTheme(
             systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black)
           ),
           useMaterial3: true,
         ),
         home: const LoginPage(),
         debugShowCheckedModeBanner: false,
       );
      },
      designSize: const Size(360, 800),
    );

  }

}