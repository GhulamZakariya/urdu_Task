import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_urdu/common/color.dart';
import 'package:task_urdu/common/textStyle.dart';

class CommonTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool dropDown;
  final bool readOnly;
  final bool dropDown1;
  final double width;



   const CommonTextField({super.key, required this.title,this.dropDown=false,this.dropDown1=false,this.readOnly=false,this.hintText='',this.width=180});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,

        children: [
          SizedBox(
            width: width.sp,
            height: 30.sp,
            child: TextFormField(
              readOnly: readOnly,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle().textFieldHint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: CommonColors().lightGreen1,
                prefixIcon: dropDown==true ? Padding(
                  padding:  EdgeInsets.only(bottom: 19.sp),
                  child: Icon(Icons.arrow_drop_down_sharp,size: 35.sp,),
                ) : SizedBox(),
                contentPadding: EdgeInsets.all(2.sp),

                suffixIcon: dropDown1==true ? Padding(
                  padding:  EdgeInsets.only(bottom: 19.sp),
                  child: Icon(Icons.arrow_drop_down_sharp,size: 35.sp,),
                ) : SizedBox(),
              ),
            ),
          ),

           Text(
        title,
        style: const TextStyle().textFieldTitle,
      ),

        ],
      ),
    );
  }
}
