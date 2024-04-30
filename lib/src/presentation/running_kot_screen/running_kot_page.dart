import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/widget/dine_in_data_widget.dart';
import 'package:yes_plus/src/presentation/widget/tab_widget.dart';
import 'package:yes_plus/src/utils/theme.dart';

class RunningKOTPage extends StatefulWidget {
  const RunningKOTPage({super.key});

  @override
  State<RunningKOTPage> createState() => _RunningKOTPageState();
}

class _RunningKOTPageState extends State<RunningKOTPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppTheme.backColor,
        appBar: AppBar(
          backgroundColor: AppTheme.backColor,
          title: Text('RUNNING KOT',style: AppTheme.appBarText,),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 35.h,
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppTheme.iconColor,
                    borderRadius: BorderRadius.circular(63.r),
                  ),
                  labelStyle: AppTheme.cardWhiteText,
                  unselectedLabelColor: AppTheme.textColor,
                  dividerColor: AppTheme.backColor,
                  labelColor: AppTheme.backColor,
                  tabs: const[
                   TabWidget(text: 'DINE IN'),
                   TabWidget(text: 'TAKEAWAY'),
                   TabWidget(text: 'DELIVERY'),

                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                    children: [
                     const DineInDataWidget(isDineIn: true,),
                     const DineInDataWidget(isTakeAway: true,),
                      Container(
                        child: const Center(
                          child: Text('DELIVERY',style: TextStyle(fontSize: 40),),
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
