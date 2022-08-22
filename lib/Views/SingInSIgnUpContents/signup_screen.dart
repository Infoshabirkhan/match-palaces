import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/home_page_view.dart';
import 'package:bigo/Views/SingInSIgnUpContents/signin_screen.dart';
import 'package:bigo/Views/WelcomeScreenContents/welcome_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
              height: 120.sp,
              width: 170.sp,
              fit: BoxFit.fill,
            ),
          ),
          Text('Sing Up',
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 36.sp,
              color: AppColors.greyText,
            ),
          ),
          SizedBox(height: 10.sp,),
          RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account?',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer().. onTap = () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen())),
                  text: ' LogIn',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: Colors.purple,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]
          ),),
          SizedBox(height: 20.sp,),
          Text('Full Name',
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
              style: GoogleFonts.roboto(
                color: AppColors.greyText,
                fontSize: 14.sp,
              ),
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
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
                labelText: 'Name',
                hintText: 'Enter Name',

              ),

            ),
          ),
          SizedBox(height: 20.sp,),
          Text('Email',
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
              style: GoogleFonts.roboto(
                color: AppColors.greyText,
                fontSize: 14.sp,
              ),
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
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
                labelText: 'Email',
                hintText: 'Enter Email',
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
          SizedBox(height: 40.sp,),
          CustomButton(textColor: Colors.white,text: 'Continue', onPressed: () async{
            try {
              UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.toString(),
                  password: passController.toString(),
              );
              passController.clear();
              emailController.clear();
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePageView()));
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                print('The password provided is too weak.');
              } else if (e.code == 'email-already-in-use') {
                print('The account already exists for that email.');
              }
            } catch (e) {
              print(e);
            }
          },color: const Color(0xff8B20BB),),
          SizedBox(height: 30.sp,),
          Text('Or SignUp with',
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
            text: 'Google',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePageView()));
            },
            color: Colors.white,
          ),
          SizedBox(height: 300.sp,),
        ],
      ),
    );
  }
}
