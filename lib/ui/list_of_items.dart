import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../common/color.dart';
import '../common/textStyle.dart';

class ListOfItems extends StatefulWidget {
  const ListOfItems({super.key});

  @override
  State<ListOfItems> createState() => _ListOfItemsState();
}

class _ListOfItemsState extends State<ListOfItems> {

  List<String> names = ["چولہا","مائیکرو ویو","پنکھا","ایل سی ڈی ٹی وی","واٹر ڈسپنسر","اے سی","واشنگ مشین ڈرائر کے ساتھ","واشنگ مشین"," فریزر","ریفریجریٹر","منی ریفریجریٹر"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 26.sp,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'حسن گلاس',
                      style: const TextStyle().textFieldTitle1
                  ),
                  Text(
                      '0000',
                      style: const TextStyle().textFieldTitle1
                  ),
                  Text(
                      'عمیر اقبال',
                      style: const TextStyle().textFieldTitle1
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
                    color: CommonColors().green,
                  ),
                ),
              ),
            ),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(7),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF002500),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF1A535C)),
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
                    child: SvgPicture.asset(
                        "assets/bi_bricks.svg",
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(7),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF002500),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF1A535C)),
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
                    child: SvgPicture.asset(
                        "assets/animal_cow.svg",
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(7),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF002500),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF1A535C)),
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
                    child: SvgPicture.asset(
                        "assets/fridge.svg",
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(7),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF002500),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF1A535C)),
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
                    child: SvgPicture.asset(
                        "assets/decoration.svg",
                    ),
                  ),
            ],),
             ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22.sp,),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: names.length,
                  itemBuilder: (context,ind){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 12.sp),
                      decoration: BoxDecoration(
                        color: CommonColors().green,
                        shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.minimize,color: Colors.white,)
                    ),
                    SizedBox(width: 8.sp,),
                    Container(
                      width: 200.sp,
                      height: 40.sp,
                      alignment: Alignment.center,
                     // padding: const EdgeInsets.only(top: 2, left: 51, right: 52, bottom: 1),
                      margin:  EdgeInsets.only(top: 10.sp),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1A535C),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.50, color: Color(0xFF002500)),
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
                    child:  Text(
                      names[ind],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Alvi Nastaleeq',
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    ),
                    SizedBox(width: 8.sp,),
                    Container(
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            color: CommonColors().green,
                            shape: BoxShape.circle
                        ),
                        child: const Icon(Icons.add,color: Colors.white,)
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: 10.sp,),
            Container(
              width: 250.sp,
              height: 90.sp,
              decoration: ShapeDecoration(
                color: const Color(0xFF114B1F),
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
            ),
            SizedBox(height: 10.sp,),
            Container(
              alignment: Alignment.center,
              width: 120.sp,
              height: 50.sp,
              padding: EdgeInsets.only(bottom: 10.sp),
              decoration: ShapeDecoration(
                color: Color(0xFF002500),
                shape: RoundedRectangleBorder(
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
              child: const Text(
                'واپس',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Jameel Noori Nastaleeq',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 30.sp,),



          ],
        ),
      ),
    );
  }
}
