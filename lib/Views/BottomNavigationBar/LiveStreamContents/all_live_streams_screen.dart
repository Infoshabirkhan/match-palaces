import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/LiveStreamContents/single_live_stream_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AllLiveStreamsScreen extends StatefulWidget {
  const AllLiveStreamsScreen({Key? key}) : super(key: key);

  @override
  State<AllLiveStreamsScreen> createState() => _AllLiveStreamsScreenState();
}

class _AllLiveStreamsScreenState extends State<AllLiveStreamsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: 17.sp,
        vertical: 30.sp
      ),
      children: [
        Row(
          children: [
            Expanded(child: SizedBox(
              height: 20.sp,
              child: Column(children: [
                Expanded(
                  flex: 8,
                  child: Text('Popular',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(child: Container(
                  height: 1.sp,
                  color: AppColors.mainColor,
                ))
              ],),
            )),
            Expanded(child: SizedBox(
              height: 20.sp,
              child: Column(children: [
                Expanded(
                  flex: 8,
                  child: Text('Latest',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.greyText,
                    ),
                  ),
                ),
                Expanded(child: Container(
                  height: 1.sp,
                  color: Colors.white,
                ))
              ],),
            )),
            Expanded(child: SizedBox(
              height: 20.sp,
              child: Column(children: [
                Expanded(
                  flex: 8,
                  child: Text('Nearby',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.greyText,
                    ),
                  ),
                ),
                Expanded(child: Container(
                  height: 1.sp,
                  color: Colors.white,
                ))
              ],),
            )),
            Expanded(child: SizedBox(
              height: 20.sp,
              child: Column(children: [
                Expanded(
                  flex: 8,
                  child: Text('Gaming',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.greyText,
                    ),
                  ),
                ),
                Expanded(child: Container(
                  height: 1.sp,
                  color: Colors.white,
                ))
              ],),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children:  [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SingleLiveStreamScreen()));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200.sp,
                          width: 155.sp,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: const AssetImage(
                                'assets/Rectangle9.png',
                              ),
                              height: 216.sp,
                              width: 155.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15.sp,
                          left: 15.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.redColor,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Text(
                                  'Man',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                          ),),
                        Positioned(
                          top: 15.sp,
                          right: 25.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 10.sp,
                                    ),),
                                    Expanded(
                                      child: Text(
                                        '1243',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),),
                        Positioned(
                          top: 150.sp,
                            bottom: 0.sp,
                            left: 10.sp,
                            right: 10.sp,
                            child: Row(children: [
                              Expanded(child: CircleAvatar(
                                radius: 10.sp,
                                child: const Image(image: AssetImage(
                              'assets/Rectangle-8.png'
                            ),),
                          )),
                          Expanded(
                            flex: 2,
                            child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Jorny Joul',
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                color: Colors.white
                              ),
                            ),
                          ),),
                        ],))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SingleLiveStreamScreen()));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200.sp,
                          width: 155.sp,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: const AssetImage(
                                'assets/Rectangle-8.png',
                              ),
                              height: 216.sp,
                              width: 155.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15.sp,
                          left: 15.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.skyBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Text(
                                  'Travel',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                          ),),
                        Positioned(
                          top: 15.sp,
                          right: 25.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 10.sp,
                                    ),),
                                    Expanded(
                                      child: Text(
                                        '1243',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),),
                        Positioned(
                            top: 150.sp,
                            bottom: 0.sp,
                            left: 10.sp,
                            right: 10.sp,
                            child: Row(children: [
                              Expanded(child: CircleAvatar(
                                radius: 10.sp,
                                child: const Image(image: AssetImage(
                                    'assets/Rectangle9.png'
                                ),),
                              )),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('sunny',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ),),
                            ],))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SingleLiveStreamScreen()));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200.sp,
                          width: 155.sp,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: const AssetImage(
                                'assets/Rectangle-7-(2).png',
                              ),
                              height: 216.sp,
                              width: 155.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15.sp,
                          left: 15.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightPink,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Text(
                                  'Music',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                          ),),
                        Positioned(
                          top: 15.sp,
                          right: 25.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 10.sp,
                                    ),),
                                    Expanded(
                                      child: Text(
                                        '1243',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),),
                        Positioned(
                            top: 150.sp,
                            bottom: 0.sp,
                            left: 10.sp,
                            right: 10.sp,
                            child: Row(children: [
                              Expanded(child: CircleAvatar(
                                radius: 10.sp,
                                child: const Image(image: AssetImage(
                                    'assets/Rectangle-8.png'
                                ),),
                              )),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Tariq Joul',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ),),
                            ],))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: 40.sp),
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 66.sp,
                    width: 156.sp,
                    child: const Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: AssetImage(
                          'assets/Group-9079.png',
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SingleLiveStreamScreen()));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200.sp,
                          width: 155.sp,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: const AssetImage(
                                'assets/Rectangle-7-(2).png',
                              ),
                              height: 216.sp,
                              width: 155.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15.sp,
                          left: 15.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightPink,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Text(
                                  'Music',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                          ),),
                        Positioned(
                          top: 15.sp,
                          right: 25.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 10.sp,
                                    ),),
                                    Expanded(
                                      child: Text(
                                        '1243',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),),
                        Positioned(
                            top: 150.sp,
                            bottom: 0.sp,
                            left: 10.sp,
                            right: 10.sp,
                            child: Row(children: [
                              Expanded(child: CircleAvatar(
                                radius: 10.sp,
                                child: const Image(image: AssetImage(
                                    'assets/Rectangle-8.png'
                                ),),
                              )),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Tariq Joul',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ),),
                            ],))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SingleLiveStreamScreen()));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200.sp,
                          width: 155.sp,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: const AssetImage(
                                'assets/Rectangle-7-(3).png',
                              ),
                              height: 216.sp,
                              width: 155.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15.sp,
                          left: 15.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightPink,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Text(
                                  'Music',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                          ),),
                        Positioned(
                          top: 15.sp,
                          right: 25.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 10.sp,
                                    ),),
                                    Expanded(
                                      child: Text(
                                        '1243',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),),
                        Positioned(
                            top: 150.sp,
                            bottom: 0.sp,
                            left: 10.sp,
                            right: 10.sp,
                            child: Row(children: [
                              Expanded(child: CircleAvatar(
                                radius: 10.sp,
                                child: const Image(image: AssetImage(
                                    'assets/Rectangle-8.png'
                                ),),
                              )),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Tariq Joul',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ),),
                            ],))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SingleLiveStreamScreen()));
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200.sp,
                          width: 155.sp,
                          child: Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: const AssetImage(
                                'assets/Rectangle-7-(2).png',
                              ),
                              height: 216.sp,
                              width: 155.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15.sp,
                          left: 15.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightPink,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Text(
                                  'Music',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
                          ),),
                        Positioned(
                          top: 15.sp,
                          right: 25.sp,
                          child: Container(
                              height: 24.sp,
                              width: 43.sp,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(8.sp,),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Expanded(child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 10.sp,
                                    ),),
                                    Expanded(
                                      child: Text(
                                        '1243',
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),),
                        Positioned(
                            top: 150.sp,
                            bottom: 0.sp,
                            left: 10.sp,
                            right: 10.sp,
                            child: Row(children: [
                              Expanded(child: CircleAvatar(
                                radius: 10.sp,
                                child: const Image(image: AssetImage(
                                    'assets/Rectangle-8.png'
                                ),),
                              )),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Tariq Joul',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ),),
                            ],))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
