import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/home_page_view.dart';
import 'package:bigo/Views/SingInSIgnUpContents/signup_screen.dart';
import 'package:bigo/Views/WelcomeScreenContents/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 17.sp,
          vertical: 40.sp
        ),
        children: [
          Center(
            child: Image(
              image: const AssetImage('assets/08076E5A-A846-462A-B5E4-9EF422610666.jpeg'),
              height: 140.sp,
              width: 200.sp,
              fit: BoxFit.fill,
            ),
          ),
          //SizedBox(height: 30.sp,),
          Text('Sing In',
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 36.sp,
              color: AppColors.greyText,
            ),
          ),
          SizedBox(height: 20.sp,),
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: 'New User?',
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              TextSpan(
                recognizer: TapGestureRecognizer().. onTap = () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen( ))),
                text: ' Create an account',
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff8B20BB),
                ),
              )
            ]
          ),),
          SizedBox(height: 30.sp,),
          Text('Username or Email',
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.sp,),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            style: GoogleFonts.roboto(
              color: AppColors.greyText,
              fontSize: 14.sp,
            ),
            obscureText: false,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.blue),
              ),
              border: const OutlineInputBorder(

              ),
              labelText: 'Email',
              hintText: 'Enter Email',
              hintStyle: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(height: 30.sp,),
          Text('Password',
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.sp,),
          SizedBox(
            height: 46.sp,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              style: GoogleFonts.roboto(
                color: AppColors.greyText,
                fontSize: 14.sp,
              ),
              obscureText: false,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.grey),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                ),
                border: const OutlineInputBorder(),
                hintStyle: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
                labelText: 'Password',
                hintText: 'Enter Password',

              ),
            ),
          ),
          SizedBox(height: 50.sp,),
          CustomButton(textColor: Colors.white,text: 'Continue', onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePageView()));
          },color: const Color(0xff8B20BB),),
          SizedBox(height: 30.sp,),
          Text('SignIn with',
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.sp,),
          CustomButton(
              textColor: const Color(0xff8B20BB),
              text: 'Google', onPressed: () async{
            try {
              UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passController.text,
              );
              emailController.clear();
              passController.clear();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePageView()));
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                print('No user found for that email.');
              } else if (e.code == 'wrong-password') {
                print('Wrong password provided for that user.');
              }
            }
          }, color: Colors.white),
          SizedBox(height: 300.sp,),
        ],
      ),
    );
  }
}
