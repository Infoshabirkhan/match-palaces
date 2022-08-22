import 'package:bigo/Views/BottomNavigationBar/home_page_view.dart';
import 'package:bigo/Views/WelcomeScreenContents/welcome_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GmailInformationScreen extends StatelessWidget {
  final String userId;

  const GmailInformationScreen({Key? key, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData && !snapshot.hasError) {
            return ListView(
              children: [
                CustomButton(
                    text: 'Submit',
                    onPressed: () {

                      Navigator.of(context).push(MaterialPageRoute(builder: (context){

                        return HomePageView();
                      }));
                    },
                    color: Color(0xff8B20BB),
                    textColor: Colors.white),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text('Something went wrong'),
            );
          }
        },
      ),
    );
  }
}
