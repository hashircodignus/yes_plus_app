import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yes_plus/src/presentation/print_bill_screen/print_bill_page.dart';
import 'package:yes_plus/src/presentation/widget/button_widget.dart';
import 'package:yes_plus/src/utils/asset_resources.dart';
import 'package:yes_plus/src/utils/theme.dart';
import '../home_screen/widget/grid_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isCashSelected = false;
  FocusNode cashFocusNode = FocusNode();

  void openKeyboard() {
    FocusScope.of(context).requestFocus(cashFocusNode);
  }

  @override
  void dispose() {
    cashFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backColor,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(preferredSize: Size.square(114.h), child:
        Container(
          height: 168.h,
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
          child:  SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                 Align(
                    alignment:const Alignment(-0.85, 0),
                    child:  GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back,color: AppTheme.backColor,))),
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetResources.cashWhite,scale: 3,),
                    SizedBox(width: 5.w,),
                    Text('952',style: AppTheme.largeNoText,)
                  ],
                ),
              ],
            ),
          ),
        )
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h,),
                  Text('Payment Via',style: AppTheme.sectionText,),
                  SizedBox(height: 10.h,),
                  GridView(
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.2,
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.h,
                        crossAxisSpacing: 20.w),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children:  <Widget> [
                      GridCard(icon:isCashSelected? AssetResources.cashWhite : AssetResources.cashIcon,
                        color: isCashSelected ? AppTheme.tableContainerGreen : AppTheme.backColor,
                        text: 'Cash',textStyle: isCashSelected? AppTheme.cardWhiteText: AppTheme.cardText,
                        onTap: () {
                          setState(() {
                            isCashSelected = !isCashSelected;
                            if(isCashSelected){
                              openKeyboard();
                            }
                          });
                        },
                      ),
                      const GridCard(icon: AssetResources.card, text: 'Card',),
                      const GridCard(icon: AssetResources.other, text: 'Other',),
                    ],
                  ),
                ],
              ),
            ),
            if(isCashSelected)
              TextFormField(
                focusNode: cashFocusNode,
                autofocus: true,
                style: AppTheme.blackTextButton,
                cursorColor: AppTheme.textColor,
                decoration:  InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppTheme.lightColor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(8.r)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.lightColor.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(8.r)
                  ),
                  hintText: 'Enter amount',
                  hintStyle: AppTheme.buttonLightText,
                ),
                keyboardType: TextInputType.number,
              ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: 50.h,left: 20.w,right: 20.w,top: 20.h),
        child:  ButtonWidget(buttonTextContent: 'Proceed',
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrintBillPage()));
          },
          color: AppTheme.tableContainerGreen,),
      ),
    );
  }
}
