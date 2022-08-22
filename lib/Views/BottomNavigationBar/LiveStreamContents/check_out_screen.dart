import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/home_page_view.dart';
import 'package:bigo/Views/SingInSIgnUpContents/signin_screen.dart';
import 'package:bigo/Views/WelcomeScreenContents/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 17.sp,
          vertical: 40.sp,
        ),
        children: [
          Row(
            children: [
              Expanded(child: Align(
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
                  'Checkout',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 15.sp,
                  ),
                ),
              ),),
              const Spacer(),
            ],
          ),
          SizedBox(height: 30.sp,),
          Row(
            children: [
              const Spacer(),
              Expanded(child: Text('Cards',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),),
              const Spacer(),
              Expanded(child: Text('Wallet',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: AppColors.greyText,
                ),
              ),),
              const Spacer(),
            ],
          ),
          SizedBox(height: 30.sp,),
          const Center(child: Image(image: AssetImage('assets/Group 21.png'),)),
          SizedBox(height: 30.sp,),
          Container(
            height: 46.sp,
            decoration: BoxDecoration(
              color: AppColors.fieldColor,
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(color: AppColors.skyBlue, width: 1.sp,),
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add,)),),
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Add new card',
                      style: GoogleFonts.roboto(
                        color: AppColors.greyText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),),),
              ],
            ),
          ),
          Divider(height: 40.sp,thickness: 1.sp,),
          SizedBox(height: 40.sp,),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Coin Total',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('\$13.2',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.sp,),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Extras',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('\$2.99',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.greyText,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.sp,),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Service Charges',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('\$1.23',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.sp,),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('TOTAL',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('\$11.87',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.sp,),
          CustomButton(
            text: 'PAY',
            onPressed: (){
            },
            color: AppColors.mainColor,
            textColor: Colors.white,),
        ],
      ),
    );
  }
}
