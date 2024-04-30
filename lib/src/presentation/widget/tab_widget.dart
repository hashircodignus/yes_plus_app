import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/utils/theme.dart';

class TabWidget extends StatefulWidget {
  final String text;
  const TabWidget({super.key, required this.text});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    {
      return Tab(
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.lightColor,width: 0.25.w),
                  borderRadius: BorderRadius.circular(63.r)
              ),
              height: 35.h,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(widget.text)));
    }
  }
}
