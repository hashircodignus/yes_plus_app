import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/completed_screen/widget/completed_delivery_widget.dart';
import 'package:yes_plus/src/presentation/completed_screen/widget/completed_dinein_widget.dart';
import 'package:yes_plus/src/presentation/completed_screen/widget/completed_takeaway_widget.dart';
import '../../utils/theme.dart';
import '../widget/tab_widget.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppTheme.backColor,
        appBar: AppBar(
          backgroundColor: AppTheme.backColor,
          title: Text('COMPLETED',style: AppTheme.appBarText,),
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
              SizedBox(height: 20.h,),
              const Expanded(
                child: TabBarView(
                    children: [
                      CompletedDineInWidget(),
                      CompletedTakeAwayWidget(),
                      CompletedDeliveryWidget(),
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
