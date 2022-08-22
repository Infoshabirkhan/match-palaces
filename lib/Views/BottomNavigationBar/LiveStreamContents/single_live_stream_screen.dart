import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/LiveStreamContents/streamer_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleLiveStreamScreen extends StatefulWidget {
  const SingleLiveStreamScreen({Key? key}) : super(key: key);

  @override
  State<SingleLiveStreamScreen> createState() => _SingleLiveStreamScreenState();
}

class _SingleLiveStreamScreenState extends State<SingleLiveStreamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: Image(
              image: AssetImage('assets/Photo.png'),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 60.sp,
            left: 20.sp,
            right: 20.sp,
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.cancel,
                      size: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 37.sp,
                      width: 150.sp,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: Column(
                        children: [
                          Expanded(child: Padding(
                            padding: EdgeInsets.only(top: 5.sp,left: 20.sp),
                            child: Text('Akira Plan',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),),
                          Expanded(child: Row(
                            children: [
                              Expanded(child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 12.sp,
                                ),
                              ),),
                              Expanded(child: Padding(
                                padding: EdgeInsets.only(left: 8.sp),
                                child: Text('420',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),),
                            ],
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 20.sp,
                      width: 20.sp,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.sp),
                          child: const Image(
                            image: AssetImage('assets/Rectangle-7-(3).png'),
                            fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 20.sp,
                      width: 20.sp,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.sp),
                        child: const Image(
                          image: AssetImage('assets/Photo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 20.sp,
                      width: 20.sp,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.sp),
                        child: const Image(
                          image: AssetImage('assets/Rectangle-7-(5).png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 20.sp,
                      width: 20.sp,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.sp),
                        child: const Image(
                          image: AssetImage('assets/Rectangle-7-(1).png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 61.sp,
            left: 61.sp,
            //right: 20.sp,
            child:  Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const StreamerDetailsScreenm(),),);
                },
                child: Container(
                  height: 35.sp,
                  width: 35.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.mainColor,width: 1.sp),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.sp),
                    child: const Image(
                      image: AssetImage('assets/Rectangle-7-(3).png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 85.sp,
            left: 68.sp,
            //right: 20.sp,
            child:  Container(
              height: 10.sp,
              width: 20.sp,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(3.sp),
              ),
              child: Center(
                  child: Text('Live',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 6.sp,
                    ),
                  ),
                ),
            ),
          ),
          Positioned(
            top: 140.sp,
            right: -10.sp,
            child: Container(
              height: 60.sp,
              width: 110.sp,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(40.sp),
              ),
              child: Row(
                children: [
                  Expanded(child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 15.sp,
                  ),),
                  Expanded(
                    flex: 2,
                    child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image(
                      image: AssetImage('assets/image-1.png'),
                    ),
                  ),),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20.sp,
            left: 17.sp,
            right: 17.sp,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(right: 10.sp),
                  height: 56.sp,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                        hintText: 'Type comment here',
                        hintStyle: GoogleFonts.roboto(
                          color: AppColors.fieldColor,
                          fontSize: 12.sp,
                        )
                      ),
                    ),
          ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 56.sp,
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                     shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage('assets/1. Gift & Toys-01.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),),
          Positioned(
            bottom: 150.sp,
            left: 17.sp,
            right: 50.sp,
            child: SizedBox(
              height: 30.sp,
              child: Row(
                children: [
                  Expanded(child: Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.sp),
                      child: Image(
                        image: const AssetImage('assets/Rectangle-7-(2).png'),
                        fit: BoxFit.fill,
                        height: 30.sp,
                        width: 30.sp,
                      ),
                    ),
                  ),),
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children:  [
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Tristian Do',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: AppColors.greyText,
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Donated',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),),
                ],
              ),
            ),),
          Positioned(
            bottom: 200.sp,
            left: 17.sp,
            right: 50.sp,
            child: SizedBox(
              height: 30.sp,
              child: Row(
                children: [
                  Expanded(child: Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.sp),
                      child: Image(
                        image: const AssetImage('assets/Rectangle-7-(4).png'),
                        fit: BoxFit.fill,
                        height: 30.sp,
                        width: 30.sp,
                      ),
                    ),
                  ),),
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children:  [
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Tristian Do',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: AppColors.greyText,
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Your look so beautiful',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),),
                ],
              ),
            ),),
          Positioned(
            bottom: 100.sp,
            left: 17.sp,
            right: 50.sp,
            child: SizedBox(
              height: 30.sp,
              child: Row(
                children: [
                  Expanded(child: Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.sp),
                      child: Image(
                        image: const AssetImage('assets/Rectangle-7-(3).png'),
                        fit: BoxFit.fill,
                        height: 30.sp,
                        width: 30.sp,
                      ),
                    ),
                  ),),
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children:  [
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Tristian Do',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: AppColors.greyText,
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Your eyes are nice',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),),
                ],
              ),
            ),),
        ],
      ),
    );
  }
}
