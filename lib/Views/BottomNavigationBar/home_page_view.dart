import 'package:bigo/Controllers/app_icons_icons.dart';
import 'package:bigo/Controllers/bottom_nav_cubit.dart';
import 'package:bigo/Model/controllers/app_colors.dart';
import 'package:bigo/Views/BottomNavigationBar/AccountsContents/account_screen.dart';
import 'package:bigo/Views/BottomNavigationBar/FavioratesContents/favoirates_screen.dart';
import 'package:bigo/Views/BottomNavigationBar/HomeScreenContents/home_page.dart';
import 'package:bigo/Views/BottomNavigationBar/LiveStreamContents/all_live_streams_screen.dart';
import 'package:bigo/Views/BottomNavigationBar/page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomCubit>(
          create: (BuildContext context) => BottomCubit(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: PageView(
            controller: PageViewController.controller,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomeScreen(),
              AllLiveStreamsScreen(),
              FavoriteScreen(),
              AccountsScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BlocBuilder<BottomCubit, int>(
          builder: (context, state) {
            return Container(
              height: 72.sp,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        context.read<BottomCubit>().setIndex(0);
                        PageViewController.controller.jumpToPage(0);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          AppIcons.home,
                          size: 20.sp,
                          color: state==0?AppColors.mainColor:Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        context.read<BottomCubit>().setIndex(1);
                        PageViewController.controller.jumpToPage(1);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          AppIcons.video,
                          size: 20.sp,
                          color: state==1?AppColors.mainColor:Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        context.read<BottomCubit>().setIndex(2);
                        PageViewController.controller.jumpToPage(2);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.favorite_border,
                          size: 20.sp,
                          color: state==2?AppColors.mainColor:Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        context.read<BottomCubit>().setIndex(3);
                        PageViewController.controller.jumpToPage(3);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_outline_sharp,
                          size: 20.sp,
                          color: state==3?AppColors.mainColor:Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
