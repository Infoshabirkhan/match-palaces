import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/LiveStreamContents/check_out_screen.dart';
import 'package:bigo/Views/WelcomeScreenContents/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinPurchaseScreen extends StatefulWidget {
  const CoinPurchaseScreen({Key? key}) : super(key: key);

  @override
  State<CoinPurchaseScreen> createState() => _CoinPurchaseScreenState();
}

class _CoinPurchaseScreenState extends State<CoinPurchaseScreen> {
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
                  'Coin Purchase',
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
          SizedBox(
            height: 110.sp,
            child: Row(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image(
                    image: const AssetImage('assets/image-(2).png'),
                    height: 90.sp,
                    width: 90.sp,
                    fit: BoxFit.fill,
                  ),
                )),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Super streamer',
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyText,
                          ),
                        ),
                      ),),
                      Expanded(child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Super charge coin',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),),
                      Expanded(child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Super pack',
                          style: GoogleFonts.roboto(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyText,
                          ),
                        ),
                      ),),
                      Expanded(child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\$1.97',
                                          style: GoogleFonts.roboto(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      TextSpan(
                                        text: ' \$7.22',
                                        style: GoogleFonts.roboto(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.greyText,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 20% OFF',
                                        style: GoogleFonts.roboto(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.greenColor,
                                        ),
                                      ),
                                    ]
                                  ),
                                )
                              ),
                            ),
                            Expanded(child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 23.sp,
                                width: 62.sp,
                                decoration: BoxDecoration(
                                  color: AppColors.fieldColor,
                                  borderRadius: BorderRadius.circular(5.sp),
                                ),
                                child: Center(
                                  child: Text('- 2 +',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                              ),),),
                          ],
                        ),
                      ),),
                    ],
                  ),),
              ],
            ),
          ),
          SizedBox(
            height: 110.sp,
            child: Row(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image(
                    image: const AssetImage('assets/image.png'),
                    height: 90.sp,
                    width: 90.sp,
                    fit: BoxFit.fill,
                  ),
                )),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Elite pack',
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyText,
                          ),
                        ),
                      ),),
                      Expanded(child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Power up 10x',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),),
                      Expanded(child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Overloaded',
                          style: GoogleFonts.roboto(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyText,
                          ),
                        ),
                      ),),
                      Expanded(child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '\$2.33',
                                            style: GoogleFonts.roboto(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' \$8.74',
                                            style: GoogleFonts.roboto(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.greyText,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' 15% OFF',
                                            style: GoogleFonts.roboto(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.greenColor,
                                            ),
                                          ),
                                        ]
                                    ),
                                  )
                              ),
                            ),
                            Expanded(child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 23.sp,
                                width: 62.sp,
                                decoration: BoxDecoration(
                                  color: AppColors.fieldColor,
                                  borderRadius: BorderRadius.circular(5.sp),
                                ),
                                child: Center(
                                  child: Text('- 3 +',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),),),
                          ],
                        ),
                      ),),
                    ],
                  ),),
              ],
            ),
          ),
          SizedBox(height: 20.sp,),
          Container(
            color: AppColors.fieldColor,
            height: 46.sp,
            padding: EdgeInsets.only(left: 10.sp,right: 10.sp),
            child: Row(
              children: [
                const Expanded(child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image(
                    image: AssetImage('assets/offer.png'),
                  ),
                ),),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Add Coupon',
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                ),
                  ),),
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15.sp,
                      color: Colors.black,
                    )
                  ),),
              ],
            ),
          ),
          SizedBox(height: 20.sp,),
          Text('PAYMENT DETAILS',
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.greyText,
            ),
          ),
          SizedBox(height: 20.sp,),
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
          SizedBox(height: 20.sp,),
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
                  child: Text('Free',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.greenColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.sp,),
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
          Text('Amount dedudted by payment gateway',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w300,
              fontSize: 10.sp,
              color: AppColors.greyText,
            ),
          ),
          SizedBox(height: 20.sp,),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('TOTAL',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
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
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.sp,),
          Container(
            color: AppColors.fieldColor,
            height: 36.sp,
            padding: EdgeInsets.only(left: 10.sp,right: 10.sp),
            child: const Center(
              child: Text('You\'re saving \$2.99 on this order!'),
            ),
          ),
          SizedBox(height: 30.sp,),
          CustomButton(
            text: 'PROCEED TO CHECKOUT',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CheckOutScreen(),),);
            },
            color: AppColors.mainColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
