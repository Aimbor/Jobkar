import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkar/recruiter_page/dashboard/saved_user.dart';
import 'experince.dart';
import 'hire_user.dart';
import 'main_page.dart';
import 'non_experience.dart';
import 'recruiter_notification_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final systemColor =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecruiterNotificationPage()));
                },
                icon: const Icon(
                  CupertinoIcons.bell,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.black,
                )),
          ],
          backgroundColor: Colors.grey[200],
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 15),
              ),
              Text(
                "A premium recruiter dashboard",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    fontSize: 12),
              ),
            ],
          ),
          bottom: TabBar(
              indicatorColor: Colors.black54,
              labelColor: Colors.black,
              labelStyle: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black),
              isScrollable: true,
              tabs: const [
                Tab(text: "Home"),
                Tab(text: "Non-Experience"),
                Tab(text: "Experience"),
                Tab(text: "Save"),
                Tab(text: "Hire"),
              ]),
        ),
        body:const  TabBarView(children: [
          MainPage(),
          NonExperience(),
          Experience(),
          SavedUser(),
          HireUser(),
        ]),
      ),
    );
  }
}
