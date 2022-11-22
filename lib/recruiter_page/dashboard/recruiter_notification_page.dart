import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecruiterNotificationPage extends StatefulWidget {
  const RecruiterNotificationPage({Key? key}) : super(key: key);

  @override
  State<RecruiterNotificationPage> createState() => _RecruiterNotificationPageState();
}

class _RecruiterNotificationPageState extends State<RecruiterNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notification",
              style: GoogleFonts.raleway(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 15),
            ),
            Text(
              "Official Community notification",
              style: GoogleFonts.raleway(fontWeight: FontWeight.w500,color: Colors.black54,fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
