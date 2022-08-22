import 'package:bigo/Controllers/splash_cubit.dart';
import 'package:bigo/Views/WelcomeScreenContents/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //future delayed is used to control text animation for splash screen
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.read<SplashCubit>().setIndex(true);
    });
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen(),),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8B20BB),
      body: BlocBuilder<SplashCubit, bool>(
  builder: (context, state) {
    return Center(
      child: RotationTransition(
        turns: state?const AlwaysStoppedAnimation( 180/ 360): const AlwaysStoppedAnimation( 360/ 360),
        child: const Image(
          image: AssetImage('assets/WhatsApp Image 2022-06-18 at 12.29 1 (2).png',
          ),
        ),
      ),
    );
  },
),
    );
  }
}
