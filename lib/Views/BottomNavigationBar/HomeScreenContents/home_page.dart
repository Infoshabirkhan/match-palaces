import 'package:bigo/Controllers/app_icons_icons.dart';
import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 17.sp,
        vertical: 20.sp),
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                  size: 20.sp,
                ),
              ),),
              const Spacer(flex: 3,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                  height: 40.sp,
                  width: 40.sp,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(8.sp),
                  ),
                    child: Center(
                      child: Icon(
                        AppIcons.search,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    ),
              ),
                ),),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 40.sp,
                    width: 40.sp,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Center(
                      child: Icon(
                        AppIcons.notification,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    ),
                  ),
                ),),
            ],
          ),
          SizedBox(height: 30.sp,),
          Text('Hi User',
            style: GoogleFonts.roboto(
              color: AppColors.greyText,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20.sp,),
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: 'Come have ',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                ),
              ),
              TextSpan(
                text: 'fun ',
                style: GoogleFonts.roboto(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                ),
              ),
              TextSpan(
                text: 'with us',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                ),
              ),
            ]
          ),),
          SizedBox(height: 20.sp,),
          Row(
            children: [
              Expanded(child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Live Streaming',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),),
              Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Text('See more',
                  style: GoogleFonts.roboto(
                    color: AppColors.greyText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),),
            ],
          ),
          SizedBox(height: 15.sp,),
          SizedBox(
            height: 192.sp,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                image: AssetImage('assets/Rectangle-6.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 20.sp,),
          Row(
            children: [
              Expanded(child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Trending live streaming',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),),
              Expanded(child: Align(
                alignment: Alignment.centerRight,
                child: Text('See all',
                  style: GoogleFonts.roboto(
                    color: AppColors.greyText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),),
            ],
          ),
          SizedBox(height: 20.sp,),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            physics: const BouncingScrollPhysics(),
            //padding: const EdgeInsets.all(20),
            crossAxisSpacing: 5.sp,
            //mainAxisSpacing: 10.sp,
            crossAxisCount: 2,
            children: <Widget>[

              SizedBox(
                height: 216.sp,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    image: AssetImage('assets/Rectangle-7-(1).png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 216.sp,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    image: AssetImage('assets/Rectangle-7.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
