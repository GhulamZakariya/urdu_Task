import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_urdu/common/color.dart';

import '../common/common_text_field.dart';
import '../common/textStyle.dart';
import 'list_of_items.dart';

class AddNewOrder extends StatefulWidget {
  const AddNewOrder({super.key});

  @override
  State<AddNewOrder> createState() => _AddNewOrderState();
}

class _AddNewOrderState extends State<AddNewOrder> {
  bool switchValue=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().scaffoldBackGroundColor,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 26.sp,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'حسن گلاس',
                      style: const TextStyle().homeHeaderText
                  ),
                  Text(
                      '0000',
                      style: const TextStyle().homeHeaderText
                  ),
                  Text(
                    'عمیر اقبال',
                    style: const TextStyle().homeHeaderText
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.sp),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: CommonColors().lightGreen,
                  ),
                ),
              ),
            ),
            const CommonTextField(title: 'نام',),
            const CommonTextField(title: 'فون نمبر',),
            const CommonTextField(title: 'تک',dropDown: true,readOnly: true,),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 18.sp),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(

                    quarterTurns: 2,
                    child: Switch(
                      value: switchValue,
                      activeColor: CommonColors().scaffoldBackGroundColor,
                      activeTrackColor: CommonColors().lightGreen1,
                      onChanged: (bool value) {
                        setState(() {
                          if(switchValue){
                            switchValue=false;
                          }else{
                            switchValue=true;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 5.sp,),
                  Text(
                    'مقررہ قیمت',
                    style: TextStyle().textFieldTitle,
                  ),
                ],
            ),
             ),
            SizedBox(height: 8.sp,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'گاڑی کی قسم',
                    style: TextStyle().textFieldTitle,
                  ),
                  Text(
                    'دکان کے پیسے ',
                    style: TextStyle().textFieldTitle,
                  ),




                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonTextField(title: '',width: 110,dropDown1: true,),
                CommonTextField(title: '',width: 110,),

              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonTextField(title: '',width: 110,dropDown1: true,hintText: 'کب تک',),
                CommonTextField(title: '',width: 110,dropDown1: true,hintText: 'کہاں تک ',),

              ],
            ),
            Text(
              'سامان',
              style: TextStyle().textFieldTitle,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListOfItems()),
                );
              },
              child: Container(
                width: 200.sp,
                padding:  EdgeInsets.only(top: 3.sp, left: 56.sp, right: 48.sp),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF002500)),
                    borderRadius: BorderRadius.circular(4.84),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x2A000000),
                      blurRadius: 2.42,
                      offset: Offset(0, 2.42),
                      spreadRadius: 0,
                    )
                  ],
                ),
              child: Text(
                'سامان داخل کریں',
                style: TextStyle().buttonText,
              ),
              ),
            ),
             Padding(
               padding:  EdgeInsets.only(left: 5.sp),
               child: Row(
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: CommonColors().lightGreen,
                      borderRadius: BorderRadius.circular(6.sp)
                    ),
                    child: Icon(Icons.check)
                  ),
                  CommonTextField(title: '',width: 200,),
                ],
            ),
             ),
            Container(
              width: 220.sp,
              height: 80.sp,
              padding: EdgeInsets.only(right: 9.sp,top: 5.sp),
              decoration: ShapeDecoration(
                color: CommonColors().darkGreen,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: CommonColors().lightGreen,),
                  borderRadius: BorderRadius.circular(4.84),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x2A000000),
                    blurRadius: 2.42,
                    offset: Offset(0, 2.42),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'فریج ۔ اےسی ۔ ٹیبل',
                    style: TextStyle().mediumText,
                  ),
                  Text(
                    "کرسی 4",
                    style: TextStyle().mediumText,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.sp,),
            Container(
              width: 200.sp,
              padding:  EdgeInsets.only(top: 3.sp, left: 56.sp, right: 48.sp),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF002500)),
                  borderRadius: BorderRadius.circular(4.84),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x2A000000),
                    blurRadius: 2.42,
                    offset: Offset(0, 2.42),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Text(
                "آرڈر درج کریں",
                style: TextStyle().buttonText,
              ),
            ),
            SizedBox(height: 18.sp,),


          ],
        ),
      ),
    );
  }
}
