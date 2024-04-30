import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/dine_screen/dine_page.dart';
import 'package:yes_plus/src/presentation/home_screen/widget/grid_card.dart';
import 'package:yes_plus/src/presentation/running_kot_screen/running_kot_page.dart';
import 'package:yes_plus/src/utils/asset_resources.dart';
import 'package:yes_plus/src/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        backgroundColor: AppTheme.iconColor,
        child: Container(
          padding: EdgeInsets.only(top: 60.h,left: 20.w),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AssetResources.logOut,scale: 4.sp,),
                  SizedBox(width: 10.w,),
                  Text("Logout",style: AppTheme.drawerText,)
                ],
              )
            ],
          ),
        )
      ),
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        leading: Builder(builder: (context)=>IconButton(
            onPressed: ()=> Scaffold.of(context).openDrawer(),
            icon:  Icon(Icons.menu,color: AppTheme.iconColor,size: 24.sp,)),),
        title: Text('Hi, Shafique',style: AppTheme.appBarText,),
        centerTitle: false,
        actions: [IconButton(onPressed: (){},
            icon: Icon(Icons.notifications_outlined,size: 24.sp,))],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 5.h,),
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
            children: <Widget> [
              GridCard(icon: AssetResources.newIcon,
                text: 'New',
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const DinePage()));},),
               GridCard(icon: AssetResources.running, text: 'Running KOT',onTap:()=>
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const RunningKOTPage())),),
              const GridCard(icon: AssetResources.pending, text: 'Pending Statement',),
              const GridCard(icon: AssetResources.completed, text: 'Completed',),
            ],
            ),
          ),
            SizedBox(height: 250.h,),
            Container(
              height: 64.h,
              width: 120.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetResources.company),fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 40.h,),
            Text("Version 10.00",style: AppTheme.smallText,)
          ],
        ),
      ),
    );
  }
}


