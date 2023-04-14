import 'package:filled/followers_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CreatePost extends StatelessWidget {
   CreatePost({Key? key}) : super(key: key);

   final List<FollowersType> _type = <FollowersType>[
     FollowersType(id: 1, name: "type 1"),
     FollowersType(id: 2, name: "type 2"),
     FollowersType(id: 3, name: "type 3"),
   ];

   int? _id ;
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
          padding: EdgeInsets.only(left: 16.w ,right:  16.w,top: 44.h),
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
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.cancel)),
              Text(
                  "إنشاء منشور" ,style :GoogleFonts.cairo(fontSize :13.sp ,fontWeight: FontWeight.w600 ,
                  color : Colors.white)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.white,
                    minimumSize: Size(68.w , 30.h),
                    maximumSize: Size(68.w , 30.h),
                    elevation: 2,
                    alignment: AlignmentDirectional.center,
                  ),
                  onPressed: (){
                  },
                  child: Text(
                    "نشر",style: GoogleFonts.tajawal(color: Color(0xFF26B888),fontSize:12.sp ),

                  )),
            ],) ,
        )),

    body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w ,right:  16.w,top: 30.h),
            child: Row(children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor:const Color(0xFF26B888),
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundImage:const AssetImage("images/post.png"),
                ),
              ),
              SizedBox(width: 10.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                    "احمد محمد" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w600 ,
                    color :const Color(0xFF000000))),
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    height:48.h ,
                    width: 318.5.w,
                    decoration: BoxDecoration(border: Border.all(color:const Color(0xFf707070) ,width: 0.25)),
                    child: DropdownButton<int>(
                        icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                        isExpanded: true,
                        underline:   Container(color: Colors.transparent),
                        hint: const Text(" المتابعين"),
                        style: GoogleFonts.tajawal(fontSize: 9.sp ,fontWeight: FontWeight.w400 ,color:Colors.black),
                        value: _id ,
                        onChanged: (int? vlaue) {
                          _id = vlaue;
                        },
                        items: _type.map((FollowersType) =>
                            DropdownMenuItem<int>(
                              child: Text(FollowersType.name ,
                                style: GoogleFonts.tajawal(fontSize: 10.sp ,
                                    fontWeight: FontWeight.w400 ,color:Colors.black),

                              ),
                              value: FollowersType.id,
                            ))
                            .toList()),
                  ),
              ],)
            ],),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.only(left: 16.w ,right:  16.w,top: 30.h),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "ما الذي ترغب في نشره   ؟",
                hintStyle: TextStyle(
                    color: Colors.black , fontSize: 9.sp ),
                constraints: BoxConstraints(
                    maxHeight: 111.h  ,maxWidth: 281.w,minHeight: 111.h),
                errorBorder:const OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.red, width: 1.0),
                ),
                enabledBorder:const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                ),
              ),
              enabled: true,

            ),
          ),
         Container(
           padding: EdgeInsets.only(left: 16.w,right: 16.w,top:30.h),
           height: 300.h,
           width: double.infinity,
           margin: EdgeInsets.only(top: 189.h),
           alignment: Alignment.bottomCenter,
           decoration: BoxDecoration(
             boxShadow:const [
            BoxShadow(color: Colors.black54,offset: Offset(3,3),blurRadius: 3)
             ],
             color: Colors.white,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),
               topRight: Radius.circular(20.r),
             )
           ),
           child: Column(
             children: [
             ListTile(

               title: Text(
                 "أضف صورة أو عدة صور" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                 color :const Color(0xFF000000))),
               leading:const Icon(Icons.drive_folder_upload_sharp ,size: 24,color: Colors.black,),
                 ),
             Divider(color:const Color(0xFFD0D6E0),height: 0.75.h),
             ListTile(title:
             Text(
                 "أضف فيديو" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                 color :const Color(0xFF000000))),
               leading:const Icon(Icons.videocam_outlined ,size: 24,color: Colors.black,),
             ),
               Divider(color:const Color(0xFFD0D6E0),height: 0.75.h),
               ListTile(title:
             Text(
                 "قم بالإشارة إلى أصدقاء أو شركات" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                 color :const Color(0xFF000000))),
               leading:const Icon(Icons.share ,size: 24,color: Colors.black,),
             ),
               Divider(color:const Color(0xFFD0D6E0),height: 0.75.h),
               ListTile(title:
             Text(
                 "أنشى مناسبة" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                 color :const Color(0xFF000000))),
               leading:const Icon(Icons.date_range ,size: 24,color: Colors.black,),
             ) ,
               Divider(color:const Color(0xFFD0D6E0),height: 0.75.h),
               ListTile(title:
             Text(
                 "شارك بحصولك على وظيفة" ,style :GoogleFonts.tajawal(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                 color :const Color(0xFF000000))),
               leading:const Icon(Icons.shopping_bag_rounded ,size: 24,color: Colors.black,),
             ),

           ],),)

        ],
      ),
    );
  }
}
