import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatelessWidget {

   Chat({Key? key}) : super(key: key);
String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 88.h,
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            height: 88.h,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:const Color(0xFF26B888),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r)),
            ),
             child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
              IconButton(onPressed: (){}, icon:Icon( Icons.arrow_back_ios)),
                 Text(
                  "الدردشات" ,style :GoogleFonts.cairo(fontSize :13.sp ,fontWeight: FontWeight.w600 ,
                  color : Colors.white)),
              IconButton(onPressed: (){}, icon:Icon( Icons.menu)),

             ]
            ),
          )),
     
     
      body: Column(
        children: [
        Padding (
          padding:  EdgeInsets.only(left: 15.w ,right: 15.w, top: 10.h ,bottom: 6.h),
          child: Row(
            children: [
            CircleAvatar(
            radius: 18.r,
            backgroundColor: Color(0xFF24AAE1),
            child: CircleAvatar(
              radius: 16.r,
              backgroundImage: AssetImage("images/person.png"),
            ),
          ),
            Text(
          " امل محمد" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w700 ,
           color : Colors.black)),
               
          ],),
        ),
      const  Divider(color: Color(0xFFD0D6E0) ,height: 0.3 ,endIndent: 16 ,indent: 16),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: ((context, index) {
          
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
           children: [
           Row(
            children: [  
              Container(
                margin: EdgeInsets.only(top: 50.h),
                padding: EdgeInsets.symmetric(vertical: 5.h ,horizontal: 15.w),
                 height: 80.h,
                 width: 287.w,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                    image: const  DecorationImage(image: AssetImage("images/background_chat1.png")),
                     borderRadius: BorderRadius.circular(10.r),
                 ),
                 child:  
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحةا." ,
                    style :GoogleFonts.cairo(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                    color : Colors.black),
                    textAlign: TextAlign.start),
                   Text(
                    "10:24" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w700 ,
                    color : Colors.black),
                    textAlign: TextAlign.end,
                    ),
                      ],)
               
              ),
                CircleAvatar(
                radius: 25.r,
                backgroundImage: AssetImage("images/person2.PNG"),
              ),
           
          
            ],
          ),  
           
           Row(
            children: [  
                    CircleAvatar(
                radius: 25.r,
                backgroundImage: AssetImage("images/person.PNG"),
              ),
           
          
              Container(
                margin: EdgeInsets.only(top: 50.h),
                padding: EdgeInsets.symmetric(vertical: 5.h ,horizontal: 15.w),
                 height: 80.h,
                 width: 287.w,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                    image: const  DecorationImage(image: AssetImage("images/back_gray.png")),
                     borderRadius: BorderRadius.circular(10.r),
                 ),
                 child:  
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحةا." ,
                    style :GoogleFonts.cairo(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                    color : Colors.black),
                    textAlign: TextAlign.start),
                   Text(
                    "10:24" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w700 ,
                    color : Colors.black),
                    textAlign: TextAlign.end,
                    ),
                      ],)
               
              ),
          
            ],
          ) ],);
        })),
      )
      ,Container(
width: 374.w,
height: 63.h,
alignment: Alignment.bottomCenter,
decoration: BoxDecoration(
  border: Border.all(color: Color(0xFFD0D6E0), width: 0.5),
),
      child: Row(children: [

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "اكتب رسالتك هنا",
                prefixIcon:const Icon(Icons.face ,color: Colors.black,),
                hintStyle: TextStyle(
                    color: Colors.black , fontSize: 12.sp ),
                constraints: BoxConstraints(
                    maxHeight: 63.h  ,maxWidth: 317.w,minHeight: 63.h),
              
                enabledBorder:const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                ),
              ),
              enabled: true,

            ),
            const  Divider(color: Color(0xFFD0D6E0) ,height: 0.5),

      
          IconButton(onPressed: (){}, icon:const Icon(Icons.send_outlined ,color: Color(0xFF514D55),))

      ]),
      )
      
      ],),
    );
  }
}
