import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MainHome extends StatelessWidget {

   MainHome({Key? key}) : super(key: key);
String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFFAFAFC),
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
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              IconButton(onPressed: (){},
               icon:Icon( Icons.arrow_back_ios),
               ),
              IconButton(onPressed: (){}, icon:Icon( Icons.message_outlined)),
              IconButton(onPressed: (){}, icon:Icon( Icons.search)),

               ],),

                 Text(
                  "الرئيسية" ,style :GoogleFonts.cairo(fontSize :13.sp ,fontWeight: FontWeight.w600 ,
                  color : Colors.white)),
              IconButton(onPressed: (){}, icon:Icon( Icons.menu)),

             ]
            ),
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.5.w ,vertical: 30.h),
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ListTile(
            leading:  CircleAvatar(radius: 20.r,
              backgroundImage:const AssetImage("images/person.png"),
              ),
             title:Text(
                    " اسم الشركة" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w400 ,
                    color :const Color(0xFF000000))),
              subtitle: Text(
                    "  منذ 3 ساعات " ,style :GoogleFonts.tajawal(fontSize :11.sp ,fontWeight: FontWeight.w200 ,
                    color :const Color(0xFF000000))),
             trailing: IconButton(icon:const Icon(Icons.abc) ,onPressed: (){},),
           )
             ,SizedBox(height: 23.h,),
                 Text(
                    "  مجموعة التصميم" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w500 ,
                    color :const Color(0xFF26B888))),
                 SizedBox(height: 12.h,),
                 Text(
                    " هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها."  ,
                    style :GoogleFonts.tajawal(fontSize :11.sp ,fontWeight: FontWeight.w400 ,
                    color :const Color(0xFF514D55))),
                 Row(children: [
             Text(
                    " لوريم_ابسوم#   "  ,
                    style :GoogleFonts.tajawal(fontSize :11.sp ,fontWeight: FontWeight.w300 ,
                    color :const Color(0xFF26B888)),
                    textAlign: TextAlign.start,),
                Text(
                    " لوريم_ابسوم#  "  ,
                    style :GoogleFonts.tajawal(fontSize :11.sp ,fontWeight: FontWeight.w300 ,
                    color :const Color(0xFF26B888))),
           
           ],),
                Stack(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 165.h,minHeight: 165.h,maxWidth: 340.w),
                child: ListView.builder(
                  padding: EdgeInsets.only(top:20.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context ,index){
                  return
                  Container(
                    margin: EdgeInsets.only(left: 5.w),
                    width: 95.w,
                    height: 147.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r)
                    ),
                    child: index < 2 ?
                    const Image(image: AssetImage("images/listview.png")):
                        Stack(children:[
                      const Image(image: AssetImage("images/listview.png")),
                      Container(
                        alignment: Alignment.center,
                        width: 95.w,
                        height: 147.h,
                        color:Colors.black26,
                        child: TextButton(onPressed: (){},child:
                          Text(
                              "+3" ,style :GoogleFonts.cairo(fontSize :20.sp ,fontWeight: FontWeight.w700 ,
                              color : Colors.white)),
                        )
                      )
                      ]
                    ),
                  );
                }),
              ),
              Container(
                margin: EdgeInsets.only(top: 140.h ,bottom: 20.h),
                child: Row(
                  children: [
                   CircleAvatar(
                    radius: 18.r,
                    backgroundColor:const Color(0xFF26B888),
                    child: IconButton(onPressed: (){},icon:const Icon(
                      Icons.favorite_outline ,color: Colors.white, size: 16),),
                   ),
                   SizedBox(width: 5.w,),
                    CircleAvatar(
                    radius: 18.r,
                    backgroundColor:const Color(0xFF26B888),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.mark_chat_unread_outlined ,
                    color: Colors.white, size: 16),),
                   ),
                    SizedBox(width: 5.w,),
                    CircleAvatar(
                    radius: 18.r,
                    backgroundColor:const Color(0xFF26B888),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.share ,
                    color: Colors.white, size: 16),),
                   ),
                   SizedBox(width: 5.w,),
                    CircleAvatar(
                    radius: 18.r,
                    backgroundColor:const Color(0xFF26B888),
                    child: IconButton(onPressed: (){},icon:const Icon(Icons.link ,
                    color: Colors.white, size: 16),),
                   )
                ],),
              )
            ],
           ),
                 Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Stack(children: [
              
              CircleAvatar(
                radius: 9.r,
                backgroundImage:const AssetImage("images/person.PNG"),
              )
              ,Container(
              margin: EdgeInsets.only(left: 8.w),
              child: 
              CircleAvatar(
                radius: 9.r,
                backgroundImage:const AssetImage("images/person.PNG"),
              )
            
            )
             ,Container(
              margin: EdgeInsets.only(left: 16.w),
              child: 
              CircleAvatar(
                radius: 9.r,
                backgroundImage: AssetImage("images/person.PNG"),
              )
            
            )
             ],)
          ,
                     Text(
                '''أحمد  محمد
                و 5 أخرون أعجيهم ذلك''' 
                
                ,style :GoogleFonts.cairo(fontSize :9.sp ,fontWeight: FontWeight.w300 ,
                color : Colors.black),
                textAlign: TextAlign.end,
          ),

              const  Spacer(),
              Text("5"
                ,style :GoogleFonts.cairo(fontSize :11.sp ,fontWeight: FontWeight.w300 ,
                  color : const Color(0xFF99A0AA)),
                textAlign: TextAlign.end,
              ),
              Image(
                  height: 18.h,
                  width: 25.w,
                  image:const AssetImage("images/share.png")),

              Text("5"
                ,style :GoogleFonts.cairo(fontSize :11.sp ,fontWeight: FontWeight.w300 ,
                    color : const Color(0xFF99A0AA)),
                textAlign: TextAlign.end,
              ),
              Image(
                  height: 18.h,
                  width: 25.w,
                  image:const AssetImage("images/massage.png")),

              Text("5"
                ,style :GoogleFonts.cairo(fontSize :11.sp ,fontWeight: FontWeight.w300 ,
                    color : const Color(0xFF99A0AA)),
                textAlign: TextAlign.end,
              ),
              Image(
                  height: 18.h,
                  width: 25.w,
                  image:const AssetImage("images/hart.png")),
            ],),
                ListView.builder(
                  padding: EdgeInsets.only(bottom: 30.h ,left: 16.w ,right: 16.w),
                  shrinkWrap: true,
                    physics:const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context,index){
                  return
                    Column(children: [
                      const Divider(color:  Color(0xFF26B888),height: 15, thickness: 0.25),
                      ListTile(
                         leading: CircleAvatar(
                           backgroundImage:const AssetImage("images/person2.PNG"),
                           radius: 13.r,
                         ),
                        title:Text(
                          "أميرة  محمد",style: GoogleFonts.tajawal(color: Colors.black,fontSize:10.sp ),),
                        subtitle: Text(
                          "منذ 2 دقائق",style: GoogleFonts.tajawal(color:const Color(0xFF514D55),fontSize:8.sp ),),
                        trailing: IconButton(onPressed: (){}, icon:Icon(Icons.maximize)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Text(
                          "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                          style: GoogleFonts.tajawal(color: Colors.black,fontSize:10.sp ),),
                      ),


                    ],);
                }),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefix: CircleAvatar(
                      radius: 13.r,
                      backgroundImage:const AssetImage("images/person2.png"),),
                    hintText: "اكتب تعليقك",
                    hintStyle: TextStyle(
                        color:const Color(0xFF000000) , fontSize: 10.sp ),
                    constraints: BoxConstraints(
                        maxHeight: 40.h,maxWidth: 310.w ,minWidth:310.w,minHeight: 40.h ),
                    errorBorder:const OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.red, width: 1.0),
                    ),
                    enabledBorder:const OutlineInputBorder(
                      borderSide: BorderSide(width: 0.3, color: Color(0xFf707070)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                    ),
                  ),
                  enabled: true,

                ),


              ]),
          )
        ],
      )
    );
  }
}
