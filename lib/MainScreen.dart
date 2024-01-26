import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:messenger/MainChatScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BottamNavBar.dart';
import 'CallScreen.dart';
import 'PeopleScreen.dart';
import 'StoryScreen.dart';
import 'appdrrawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> randomNames = [
    'Emily',
    'Alex',
    'Jasmine',
    'Brandon',
    'Sophia',
    'Marcus',
    'Isabella',
    'Jordan',
    'Olivia',
    'Carter',
  ];
  loaddata() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    val = prefs.getInt('val') ?? 0;
    screen = prefs.getInt('screen') ?? 0;
    setState(() {});
  }

  int val = 0;
  int screen = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.all(5),
                child: badges.Badge(
                    badgeContent: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                    position: badges.BadgePosition.topEnd(top: 0.1, end: 0.11),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.05),
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 25,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    )),
              );
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
                () {
              if (screen == 0) {
                return "Chats";
              } else if (screen == 1) {
                return "Calls";
              } else if (screen == 2) {
                return "People";
              } else {
                return "Stories";
              }
            }(),
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'RobotoMono',
              fontSize: width * 0.07,
            ),
            textAlign: TextAlign.center,
          ),

          actions: [
            Padding(
                padding: EdgeInsets.all(5),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.05),
                  child: IconButton(
                    icon: Icon(
                      screen == 0?
                      Icons.edit: screen == 1?Icons.call:screen == 2?Icons.contact_page_rounded:Icons.store_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                )),
          ]),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Builder(
            builder: (context) {
              if (screen == 0) {
                return MainChatScreen();
              }
    else if(screen==1){
      return CallScreen();
              }
              else if(screen==2){
                return PeopleScreen();
              }
              else {
                return    StoryScreen();
              }
            },
          ),

      ),
      bottomNavigationBar: CustomBottomNavigationBar(
          height: height,
          width:width, // pass the desired width,
          screen:screen, // pass the current screen index,
          loaddata: () {
            loaddata();
    },
    ),
    );
  }
}
