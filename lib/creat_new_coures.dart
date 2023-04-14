import 'package:filled/followers_type.dart';
import 'package:filled/main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewCourse extends StatelessWidget {
  const CreateNewCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _errorText;
    List<FollowersType> _type = <FollowersType>[
      FollowersType(id: 1, name: "type 1"),
      FollowersType(id: 2, name: "type 2"),
      FollowersType(id: 3, name: "type 3"),
    ];
    int? _id ;
    return Scaffold(
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
                children:[
                  IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios)),
                 Expanded(
                   flex: 3,
                   child: Text(
                          "أضف دورة تدربية جديدة" ,style :GoogleFonts.cairo(fontSize :13.sp ,fontWeight: FontWeight.w600 ,
                          color : Colors.white),textAlign: TextAlign.center,),
                 ),
                  
                ]
            ),
          )),
         body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [

          Container(
            margin: EdgeInsets.only(top: 24.h),
            padding: EdgeInsets.symmetric(horizontal: 12.w ,vertical: 17.h),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                  "  المعلومات الأساسية" ,style :GoogleFonts.cairo(fontSize :12.sp ,fontWeight: FontWeight.w600 ,
                  color : Colors.black)),
              const Divider(color:  Color(0xFFD0D6E0),height: 15, thickness: 1),

              SizedBox(height: 35.h,),
              Text(
                  "الشهادة" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                  color : Colors.black)),
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
                    hint: const Text("يوجد شهادة"),
                    style: GoogleFonts.tajawal(fontSize: 14 ,fontWeight: FontWeight.w400 ,color:Color(0XFFD0D6E0)),
                    value: _id ,
                    onChanged: (int? vlaue) {
                      _id = vlaue;
                    },
                    items: _type.map((FollowersType) =>
                        DropdownMenuItem<int>(
                          child: Text(FollowersType.name),
                          value: FollowersType.id,
                        ))
                        .toList()),

              ),

                SizedBox(height: 20.h,),
                Text(
                  "اللغة" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                  color : Colors.black)),
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
                    hint: const Text(" الانجليزي"),
                    style: GoogleFonts.tajawal(fontSize: 14 ,fontWeight: FontWeight.w400 ,color:const Color(0XFFD0D6E0)),
                    value: _id ,
                    onChanged: (int? vlaue) {
                      _id = vlaue;
                    },
                    items: _type.map((FollowersType) =>
                        DropdownMenuItem<int>(
                          child: Text(FollowersType.name),
                          value: FollowersType.id,
                        ))
                        .toList()),

              ),

                SizedBox(height: 20.h,),
                Text(
                  "عدد الدروس" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                  color : Colors.black)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "8",
                  hintStyle: TextStyle(
                      color:const Color(0xFF707070) , fontSize: 13.sp ),
                  constraints: BoxConstraints(
                      maxHeight: _errorText == null? 48.h : 75.h ,maxWidth: 318.w),
                  errorBorder:const OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.red, width: 1.0),
                  ),
                  enabledBorder:const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.5, color: Color(0xFf707070)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                  ),
                ),
                enabled: true,

              ),



            ],),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 12.w ,vertical: 16.h),
            color: Colors.white,
            child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
                "الوصف العام" ,style :GoogleFonts.cairo(fontSize :12.sp ,fontWeight: FontWeight.w600 ,
                color : Colors.black)),
              const Divider(color:  Color(0xFFD0D6E0),height: 15, thickness: 1),

             SizedBox(height: 35.h,),
              Text(
                "نبذة" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                color : Colors.black)),
              SizedBox(height: 10.h,),
              TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    color:const Color(0xFF707070) , fontSize: 13.sp ),
                constraints: BoxConstraints(
                    maxHeight: 80.h,maxWidth: 318.w ,minWidth:318.w,minHeight: 80.h ),
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

            Text(
                "ماذا سوف تتعلم" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                color : Colors.black)),
              SizedBox(height: 10.h,),
              TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "",
                hintStyle: TextStyle(
                    color:const Color(0xFF707070) , fontSize: 13.sp ),
                constraints: BoxConstraints(
                    maxHeight: 80.h,maxWidth: 318.w, minWidth:318.w,minHeight: 80.h),
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

            Text(
                "أسئلة عامة" ,style :GoogleFonts.cairo(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                color : Colors.black)),
              SizedBox(height: 10.h,),
              TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "",
                hintStyle: TextStyle(
                    color:const Color(0xFF707070) , fontSize: 13.sp ),
                constraints: BoxConstraints(
                    maxHeight: 80.h,maxWidth: 318.w ,minWidth:318.w,minHeight: 80.h),
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

            SizedBox(height: 16.h,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:const Color(0xFF26B888),
                  minimumSize: Size(343.w , 40.h),
                  maximumSize: Size(343.w , 40.h),
                  elevation: 2,
                  alignment: AlignmentDirectional.center,
                  padding:  EdgeInsets.all(10.h),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHome()));
                //  AddNewCoures(context);
                },
                child: Text(
                  "إضافة دورة تدربية جديدة",style: GoogleFonts.tajawal(color: Colors.white,fontSize:14.sp ),

                )),
          ],),)

        ],
      ),
    );


  }
  void AddNewCoures(BuildContext context)async{
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
            Text(
                "أضف مسار تعليمي" ,style :GoogleFonts.cairo(fontSize :12.sp ,fontWeight: FontWeight.w700 ,
                color : Colors.black)),
            const Divider(color:  Color(0xFFD0D6E0),height: 18, thickness: 1),
             SizedBox(height: 20.h,),
            Text(
                "اسم المسار " ,style :GoogleFonts.tajawal(fontSize :14.sp ,fontWeight: FontWeight.w400 ,
                color : Colors.black)),
              SizedBox(height: 20.h,),

              TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "ادخل اسم المسار",
                hintStyle: TextStyle(
                    color:const Color(0xFF707070) , fontSize: 13.sp ),
                constraints: BoxConstraints(
                    maxHeight:  48.h,maxWidth: 342.w ,minHeight: 48.h ,minWidth: 342.w),
                errorBorder:const OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.red, width: 1.0),
                ),
                enabledBorder:const OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Color(0xFf707070)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD0D6E0), width: 1.0),
                ),
              ),
              enabled: true,

            ),
              SizedBox(height: 25.h,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:const Color(0xFF26B888),
                  minimumSize: Size(343.w , 40.h),
                  maximumSize: Size(343.w , 40.h),
                  elevation: 2,
                  alignment: AlignmentDirectional.center,
                  padding:  EdgeInsets.all(10.h),
                ),
                onPressed: (){
                },
                child: Text(
                  "إضافة مسار تعليمي",style: GoogleFonts.tajawal(color: Colors.white,fontSize:14.sp ),

                )),
        ],),
          );
      });
    });
  }
}
