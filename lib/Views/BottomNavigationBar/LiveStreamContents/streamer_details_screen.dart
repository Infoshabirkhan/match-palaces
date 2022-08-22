import 'package:bigo/Controllers/app_icons_icons.dart';
import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/LiveStreamContents/coin_purchase_screen.dart';
import 'package:bigo/Views/BottomNavigationBar/LiveStreamContents/single_live_stream_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StreamerDetailsScreenm extends StatefulWidget {
  const StreamerDetailsScreenm({Key? key}) : super(key: key);

  @override
  State<StreamerDetailsScreenm> createState() => _StreamerDetailsScreenmState();
}

class _StreamerDetailsScreenmState extends State<StreamerDetailsScreenm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 17.sp,
          vertical: 40.sp
        ),
        children: [
          Row(
            children: [
              Expanded(child:
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30.sp,
                    width: 30.sp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.mainColor,
                    ),
                    child: Center(
                      child: Icon(Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),),
              Expanded(child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Profile',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 15.sp,
                  ),
                ),
              ),),
              Expanded(child:
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30.sp,
                  width: 30.sp,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainColor,
                  ),
                  child: Center(
                    child: Icon(Icons.error_outline,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),),
            ],
          ),
          SizedBox(height: 30.sp,),
          Center(
            child: Container(
              height: 80.sp,
              width: 80.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2.sp,color: AppColors.lightPink)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.sp),
                child: const Image(
                  image: AssetImage('assets/Rectangle 7 (5).png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.sp,),
          Center(
            child: Text('Kylie Janneh',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          Center(
            child: Text('Daily Vlogger',
              style: GoogleFonts.roboto(
                  color: AppColors.greyText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          SizedBox(height: 20.sp,),
          Row(
            children: [
              const Spacer(flex: 2,),
              Expanded(child:
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 30.sp,
                  width: 30.sp,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainColor,
                  ),
                  child: Center(
                    child: Icon(AppIcons.heart,
                      color: Colors.white,
                      size: 15.sp,
                    ),
                  ),
                ),
              ),),
              Expanded(child:
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 30.sp,
                  width: 30.sp,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainColor,
                  ),
                  child: Center(
                    child: Icon(Icons.message_outlined,
                      color: Colors.white,
                      size: 15.sp,
                    ),
                  ),
                ),
              ),),
              Expanded(child:
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30.sp,
                  width: 30.sp,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainColor,
                  ),
                  child: Center(
                    child: Icon(AppIcons.message,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),),
              const Spacer(flex: 2,),
            ],
          ),
          SizedBox(height: 30.sp,),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 15.sp,
                    width: 30.sp,
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(5.sp)
                    ),
                    child: Center(
                      child: Text('My live',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: Text('Moments',
                style: GoogleFonts.roboto(
                  color: AppColors.greyText,
                  fontSize: 10.sp,
                ),
              ),),
              Expanded(child: Text('Saved live',
                style: GoogleFonts.roboto(
                  color: AppColors.greyText,
                  fontSize: 10.sp,
                ),
              ),),
              const Spacer(flex: 3,),
            ],
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            //padding: const EdgeInsets.all(20),
            crossAxisSpacing: 0.sp,
            mainAxisSpacing: 10.sp,
            crossAxisCount: 2,
            children: <Widget>[

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoinPurchaseScreen()));
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
                            'assets/Rectangle 13.png',
                          ),
                          fit: BoxFit.fill,
                          height: 216.sp,
                          width: 125.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.sp,
                      right: 32.sp,
                      child: Container(
                          height: 20.sp,
                          width: 40.sp,
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
                        top: 110.sp,
                        bottom: 0.sp,
                        left: 30.sp,
                        right: 10.sp,
                        child: Column(children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fishing mania',
                                style: GoogleFonts.roboto(
                                    fontSize: 11.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('2 hours ago',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoinPurchaseScreen()));
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
                            'assets/Rectangle 12.png',
                          ),
                          fit: BoxFit.fill,
                          height: 216.sp,
                          width: 125.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.sp,
                      right: 32.sp,
                      child: Container(
                          height: 20.sp,
                          width: 40.sp,
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
                        top: 110.sp,
                        bottom: 0.sp,
                        left: 30.sp,
                        right: 10.sp,
                        child: Column(children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fishing mania',
                                style: GoogleFonts.roboto(
                                    fontSize: 11.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('2 hours ago',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoinPurchaseScreen()));
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
                          fit: BoxFit.fill,
                          height: 216.sp,
                          width: 125.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.sp,
                      right: 32.sp,
                      child: Container(
                          height: 20.sp,
                          width: 40.sp,
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
                        top: 110.sp,
                        bottom: 0.sp,
                        left: 30.sp,
                        right: 10.sp,
                        child: Column(children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fishing mania',
                                style: GoogleFonts.roboto(
                                    fontSize: 11.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('2 hours ago',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoinPurchaseScreen()));
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
                            'assets/Rectangle 8.png',
                          ),
                          fit: BoxFit.fill,
                          height: 216.sp,
                          width: 125.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.sp,
                      right: 32.sp,
                      child: Container(
                          height: 20.sp,
                          width: 40.sp,
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
                        top: 110.sp,
                        bottom: 0.sp,
                        left: 30.sp,
                        right: 10.sp,
                        child: Column(children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fishing mania',
                                style: GoogleFonts.roboto(
                                    fontSize: 11.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('2 hours ago',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoinPurchaseScreen()));
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
                            'assets/Rectangle 13.png',
                          ),
                          fit: BoxFit.fill,
                          height: 216.sp,
                          width: 125.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.sp,
                      right: 32.sp,
                      child: Container(
                          height: 20.sp,
                          width: 40.sp,
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
                        top: 110.sp,
                        bottom: 0.sp,
                        left: 30.sp,
                        right: 10.sp,
                        child: Column(children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fishing mania',
                                style: GoogleFonts.roboto(
                                    fontSize: 11.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('2 hours ago',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoinPurchaseScreen()));
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
                          fit: BoxFit.fill,
                          height: 216.sp,
                          width: 125.sp,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.sp,
                      right: 32.sp,
                      child: Container(
                          height: 20.sp,
                          width: 40.sp,
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
                        top: 110.sp,
                        bottom: 0.sp,
                        left: 30.sp,
                        right: 10.sp,
                        child: Column(children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Fishing mania',
                                style: GoogleFonts.roboto(
                                    fontSize: 11.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('2 hours ago',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp,
                                    color: Colors.white
                                ),
                              ),
                            ),),
                        ],))
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
