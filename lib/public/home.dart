import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nav_page/collection/collection.dart';
import 'nav_page/message/message.dart';
import 'nav_page/people/people.dart';
import 'nav_page/profile/profile.dart';
import 'nav_page/public_page/public_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  void selectIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }
  List<Widget> data = const[
    PublicHome(),
    Collection(),
    Message(),
    People(),
    Profile(),
  ];
  final systemColor = const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.transparent
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return CupertinoTabScaffold(
        backgroundColor: Colors.white,
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white,
          activeColor: Colors.black,
          currentIndex: _currentIndex,
          inactiveColor: Colors.black,
          onTap: selectIndex,
          items:const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.app_badge),
                label: 'Collection'
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bubble_left),
                label: 'Message'
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_2),
                label: 'People'
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle),
                label: 'Profile'
            ),
          ],
        ),
        tabBuilder: (context ,index) {
          switch (index) {
            case 0:
              return const PublicHome();
            case 1:
              return const Collection();
            case 2:
              return const Message();
            case 3:
              return const People();
            case 4:
              return const Profile();
          }
          return Container();
        }
    );
  }
}