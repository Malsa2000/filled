import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewCourse extends StatelessWidget {
  const CreateNewCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: [
        AddNewCoures(context)
      ],)
    );



  }
   AddNewCoures(BuildContext context)async{

    showModalBottomSheet(context: context, builder: (context){
      RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r)));
      const ClipOval(clipBehavior: Clip.antiAlias,);
      return BottomSheet(
          clipBehavior: Clip.antiAlias,
          onClosing:(){} ,
          backgroundColor: Colors.transparent,
          builder: (context){
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [

                  Row(children: [
                   Image(
                     width: 15.w,
                       height: 19.h,
                       image:const AssetImage("images/save.png")),
                   Text(
                       "إلغاء حفظ المنشور" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w400 ,
                       color : Colors.black)),
                 ],),
                  const Divider(color:  Color(0xFFD0D6E0),height: 18, thickness: 1),

                  Row(children: [
                    Image(
                        width: 15.w,
                        height: 19.h,
                        image:const AssetImage("images/cancel_request.png")),
                    Text(
                        "إلغاء متابعة اسم الشركة" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w400 ,
                        color : Colors.black)),
                  ],),
                  const Divider(color:  Color(0xFFD0D6E0),height: 18, thickness: 1),

                  Row(children: [
                    Image(
                        width: 15.w,
                        height: 19.h,
                        image:const AssetImage("images/cancel.png")),
                    Text(
                        "إخفاء المنشور" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w400 ,
                        color : Colors.black)),
                  ],),
                  const Divider(color:  Color(0xFFD0D6E0),height: 18, thickness: 1),

                ],),
            );
          });
    });
  }
}
