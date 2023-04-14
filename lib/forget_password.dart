import 'package:filled/create_paos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword2 extends StatelessWidget {
   ForgetPassword2({Key? key}) : super(key: key);
  String? _errorText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFC),
      appBar: AppBar(
          toolbarHeight: 88.h,
           titleSpacing: 0,
          leadingWidth: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            height: 88.h,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:const Color(0xFF26B888),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r)),

            ),
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
        SizedBox(height: 100.h,),
        Text(
            "SkillFull" ,style :GoogleFonts.cairo(fontSize :35.sp ,fontWeight: FontWeight.w600 ,
            color :const Color(0xFF26B888)),textAlign: TextAlign.center),
        SizedBox(height: 21.h,),
        Text(
            "إعادة تعيين كلمة المرور" ,style :GoogleFonts.cairo(fontSize :20.sp ,fontWeight: FontWeight.w700 ,
            color :const Color(0xFF000000)),
            textAlign: TextAlign.center),
        SizedBox(height: 30.h,),
        TextField(
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "ادخل كلمة المرور",
            hintStyle: TextStyle(
                color: Color(0xFF99A0AA) , fontSize: 13.sp ),
            constraints: BoxConstraints(
                maxHeight: _errorText == null? 48.h : 75.h ,maxWidth: 343.w),
            errorBorder:const OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.red, width: 1.0),
            ),

            enabledBorder:const OutlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: Color(0xFFD0D6E0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
            ),
          ),
          enabled: true,

        ),
        SizedBox(height: 20.h,),
        TextField(
          obscureText: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "تأكيد كلمة المرور",
            hintStyle: TextStyle(
                color: Color(0xFF99A0AA) , fontSize: 13.sp ),
            constraints: BoxConstraints(
                maxHeight: _errorText == null? 48.h : 75.h ,maxWidth: 343.w),
            errorBorder:const OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.red, width: 1.0),
            ),

            enabledBorder:const OutlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: Color(0xFFD0D6E0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
            ),
          ),
          enabled: true,

        ),
        SizedBox(height: 30.h,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary:const  Color(0xFF26B888),
              minimumSize: Size(342.w , 48.h),
              maximumSize: Size(342.w , 48.h),
              elevation: 2,
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.symmetric(horizontal: 21),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePost()));
            },
            child: Text(
              "إعادة تعيين كلمة المرور",style: GoogleFonts.abel(color: Colors.white,fontSize:14.sp ),

            )),


      ],),

    );
  }
}
