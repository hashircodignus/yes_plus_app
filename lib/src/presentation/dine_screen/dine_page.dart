import 'package:flutter/material.dart';
import 'package:yes_plus/src/presentation/dine_screen/widget/dinein_title_widget.dart';
import 'package:yes_plus/src/presentation/widget/dine_in_data_widget.dart';
import 'package:yes_plus/src/utils/theme.dart';

class DinePage extends StatelessWidget {
  const DinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        title: const DineInTitleWidget(),
      ),
      body: const DineInDataWidget(isDineIn: false,),
    );
  }
}