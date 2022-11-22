import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_card/non_user_experience_card_design.dart';


class NonExperienceUserNameList extends StatefulWidget {
  const NonExperienceUserNameList({Key? key}) : super(key: key);

  @override
  State<NonExperienceUserNameList> createState() => _NonExperienceUserNameListState();
}

class _NonExperienceUserNameListState extends State<NonExperienceUserNameList> {
  final systemColor =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[200],
        title: Column(
          children: [
            Text(
              'Non-Experience',
              style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
            Text(
              'Premium non-experience user list',
              style: GoogleFonts.raleway(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Vimal Pandey',
                userEmail: 'vimal@gmail.com',
                skill: 'Java Core',
                testScore: '24/30',
                callTap: () {},
                chatTap: () {},
                hireTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Sujeet Kumar',
                userEmail: 'sujeet@gmail.com',
                skill: 'Java Core',
                testScore: '20/30',
                callTap: () {},
                hireTap: () {},
                chatTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Vinayak Singh',
                userEmail: 'vinayak@gmail.com',
                skill: 'Java Core',
                testScore: '21/30',
                callTap: () {},
                chatTap: () {},
                hireTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Vimal Pandey',
                userEmail: 'vimal@gmail.com',
                skill: 'Java Core',
                testScore: '24/30',
                callTap: () {},
                chatTap: () {},
                hireTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Sujeet Kumar',
                userEmail: 'sujeet@gmail.com',
                skill: 'Java Core',
                testScore: '20/30',
                callTap: () {},
                hireTap: () {},
                chatTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Vinayak Singh',
                userEmail: 'vinayak@gmail.com',
                skill: 'Java Core',
                testScore: '21/30',
                callTap: () {},
                chatTap: () {},
                hireTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Vimal Pandey',
                userEmail: 'vimal@gmail.com',
                skill: 'Java Core',
                testScore: '24/30',
                callTap: () {},
                chatTap: () {},
                hireTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Sujeet Kumar',
                userEmail: 'sujeet@gmail.com',
                skill: 'Java Core',
                testScore: '20/30',
                callTap: () {},
                hireTap: () {},
                chatTap: () {},
                favouriteTap: () {},
              ),
              const SizedBox(height: 8.0),
              NonUserExperienceCardDesign(
                userName: 'Vinayak Singh',
                userEmail: 'vinayak@gmail.com',
                skill: 'Java Core',
                testScore: '21/30',
                callTap: () {},
                chatTap: () {},
                hireTap: () {},
                favouriteTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
