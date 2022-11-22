import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkar/public/nav_page/profile/privacy_policy.dart';
import 'package:jobkar/public/nav_page/profile/terms_conditions.dart';
import 'package:jobkar/public/nav_page/profile/theme_settings.dart';
import 'package:jobkar/public/nav_page/profile/update_user_details.dart';

import '../../../recruiter_page/model/signin.dart';
import 'change_password.dart';
import 'copyright_page.dart';
import 'customer_help.dart';
import 'feedback_post.dart';
import 'notification_settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final systemColor = const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent);
  final textStyle = GoogleFonts.lato(
      color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 13);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: const [
          Icon(CupertinoIcons.settings,color: Colors.black,size: 25),
          SizedBox(width: 20)
        ],
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[200],
        title: Text(
          "My Profile",
          style: GoogleFonts.raleway(color: Colors.black,fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'General Settings',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Colors.black54),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateUserDetails()));
                    },
                    leading: const Icon(CupertinoIcons.person, size: 20),
                    title: Text('Profile', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemeSettings()));
                    },
                    leading: const Icon(CupertinoIcons.color_filter,
                        size: 20),
                    title: Text('Theme', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePassword()));
                    },
                    leading: const Icon(CupertinoIcons.lock_open, size: 20),
                    title: Text('Change Password', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationSettings()));
                    },
                    leading:
                    const Icon(CupertinoIcons.bell, size: 20),
                    title: Text('Notification', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                    },
                    leading:
                    const Icon(CupertinoIcons.briefcase, size: 20),
                    title: Text('Recruiter', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'Terms & Privacy',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Colors.black54),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyAndPolicy()));
                    },
                    leading: const Icon(CupertinoIcons.app, size: 20),
                    title: Text('Privacy Policy', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsAndCondition()));
                    },
                    leading: const Icon(CupertinoIcons.book, size: 20),
                    title: Text('Terms Conditions', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CopyRightPage()));
                    },
                    leading: const Icon(CupertinoIcons.info_circle, size: 20),
                    title: Text('Copyright', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'Community',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Colors.black54),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerHelp()));
                    },
                    leading: const Icon(CupertinoIcons.hexagon, size: 20),
                    title: Text('Help Center', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackPost()));
                    },
                    leading: const Icon(CupertinoIcons.ant, size: 20),
                    title: Text('Report a problem', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(CupertinoIcons.exclamationmark_triangle,
                        size: 20),
                    title: Text('Logout', style: textStyle),
                    trailing:
                    const Icon(CupertinoIcons.chevron_forward, size: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
