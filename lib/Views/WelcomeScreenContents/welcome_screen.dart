import 'package:bigo/Views/SingInSIgnUpContents/signin_screen.dart';
import 'package:bigo/Views/SingInSIgnUpContents/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 50.sp
        ),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150.sp),
              child: Image(
                image: const AssetImage('assets/08076E5A-A846-462A-B5E4-9EF422610666.jpeg'),
                height: 120.sp,
                width: 120.sp,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.sp,
              horizontal: 20.sp
            ),
            child: Row(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 60.sp,
                    width: 60.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9066.png'),
                    ),
                  ),
                )),
                Expanded(child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 50.sp,
                    width: 50.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9062.png'),
                    ),
                  ),
                )),
                Expanded(child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 40.sp,
                    width: 40.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9063.png'),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 20.sp,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.sp,
              vertical: 10.sp,
          ),
            child: Row(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 50.sp,
                    width: 50.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9064.png'),
                    ),
                  ),
                )),
                Expanded(child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 70.sp,
                    width: 70.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9061.png'),
                    ),
                  ),
                )),
                Expanded(child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 50.sp,
                    width: 50.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9065.png'),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 10.sp,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.sp,
              vertical: 10.sp,
            ),
            child: Row(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 50.sp,
                    width: 50.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9065.png'),
                    ),
                  ),
                )),
                Expanded(child: Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 50.sp,
                    width: 50.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9064.png'),
                    ),
                  ),
                )),
                Expanded(child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 40.sp,
                    width: 40.sp,
                    child: const Image(
                      image: AssetImage('assets/Group 9063.png'),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 10.sp,),
          Center(
            child: Text('Find right person\n leveraging the best matching',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Text('platform',
              style: GoogleFonts.roboto(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(height: 30.sp,),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 17.sp
            ),
            child: CustomButton(
              textColor: Colors.white,
              text: 'SignIn',
              color: const Color(0xff8B20BB),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
              },
            ),
          ),
          SizedBox(height: 20.sp,),
          Padding(
            padding:  EdgeInsets.symmetric(
                horizontal: 17.sp
            ),
            child: CustomButton(
              textColor: Colors.white,
              text: 'SignUp',
              color: const Color(0xff8B20BB),
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key, required this.text, required this.onPressed, required this.color, required this.textColor,
  }) : super(key: key);
  final String? text;
  final onPressed;
  final Color color;
  final Color textColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        //margin: EdgeInsets.only(left: 17.sp, right: 17.sp),
        height: 50.sp,
        width: 327.sp,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(15.sp),
          border: Border.all(color: const Color(0xff8B20BB),width: 1.sp)
        ),
        child: Center(child: Text(widget.text!,
          style: GoogleFonts.roboto(
            color: widget.textColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),),
      ),
    );
  }
}
