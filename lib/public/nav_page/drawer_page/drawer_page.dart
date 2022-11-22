import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../recruiter_page/model/signin.dart';
import '../profile/customer_help.dart';
import '../profile/notification_settings.dart';
import '../profile/theme_settings.dart';
import '../profile/update_user_details.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String name = '';
  String email = '';
  String imageUrl = '';

  final lableText = GoogleFonts.raleway(
      fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black);
  final mainText =
      GoogleFonts.raleway(fontWeight: FontWeight.normal, fontSize: 13);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Colors.grey[300],
                  ),
                  child: Center(
                    child: imageUrl == ''
                        ? const Icon(Icons.person, size: 50, color: Colors.grey)
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(imageUrl,
                                height: 100, width: 100, fit: BoxFit.cover),
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Jubin Nautiyal',
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'jubin_nuatiyal@gmail.com',
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black54),
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateUserDetails()));
                },
                title: Text(
                  "Profile",
                  style: lableText,
                ),
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.account_circle_sharp,
                      size: 30,
                      color: Colors.black,
                    )),
                subtitle: Text(
                  "Profile settings",
                  style: mainText,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemeSettings()));
                },
                title: Text(
                  "Theme",
                  style: lableText,
                ),
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.invert_colors,
                      size: 30,
                      color: Colors.black,
                    )),
                subtitle: Text(
                  "Theme change",
                  style: mainText,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationSettings()));
                },
                title: Text(
                  "Notification",
                  style: lableText,
                ),
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.black,
                    )),
                subtitle: Text("Notification settings", style: mainText),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                },
                title: Text(
                  "Recruiter",
                  style: lableText,
                ),
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.business_center,
                      size: 30,
                      color: Colors.black,
                    )),
                subtitle: Text(
                  "Recruiter account",
                  style: mainText,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerHelp()));
                },
                title: Text(
                  "Help",
                  style: lableText,
                ),
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.support_agent_sharp,
                      size: 30,
                      color: Colors.black,
                    )),
                subtitle: Text(
                  "Customer support's 24x7",
                  style: mainText,
                ),
              ),
              ListTile(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "Alert",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.normal),
                          ),
                          content: Text(
                            "Are you sure want to logout",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.normal),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'No',
                                style: GoogleFonts.raleway(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Yes',
                                style: GoogleFonts.raleway(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        );
                      });
                },
                title: Text(
                  "Logout",
                  style: lableText,
                ),
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.logout_outlined,
                      size: 25,
                      color: Colors.black,
                    )),
                subtitle: Text(
                  "Account logout",
                  style: mainText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
