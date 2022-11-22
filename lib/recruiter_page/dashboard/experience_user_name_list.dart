import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_card/user_experience_card_design.dart';


class ExperienceUserNameList extends StatefulWidget {
  const ExperienceUserNameList({Key? key}) : super(key: key);

  @override
  State<ExperienceUserNameList> createState() => _ExperienceUserNameListState();
}

class _ExperienceUserNameListState extends State<ExperienceUserNameList> {
  final systemColor =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[200],
        titleSpacing: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Experience',
              style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
            Text(
              'Premium experience user list',
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
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Gulab Singh',
                userEmail: 'gulab@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'Amazon India',
                yearExperience: 'Four Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                  userName: 'Aayush Pandey',
                  userEmail: 'aayush@gmail.com',
                  skillName: 'Jave Core',
                  oldCompany: 'Infosys India',
                  yearExperience: 'Two Year',
                  callTap: (){},
                  chatTap: (){},
                  favouriteTap: (){},
                  hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Nandani Patel',
                userEmail: 'nandani@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'TCS India',
                yearExperience: 'Two Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Shuklat Nair',
                userEmail: 'shuklat@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'Amazon India',
                yearExperience: 'Three Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Gulab Singh',
                userEmail: 'gulab@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'Amazon India',
                yearExperience: 'Four Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Nandani Patel',
                userEmail: 'nandani@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'TCS India',
                yearExperience: 'Two Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Shuklat Nair',
                userEmail: 'shuklat@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'Amazon India',
                yearExperience: 'Three Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Gulab Singh',
                userEmail: 'gulab@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'Amazon India',
                yearExperience: 'Four Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Nandani Patel',
                userEmail: 'nandani@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'TCS India',
                yearExperience: 'Two Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
              const SizedBox(height: 8.0),
              UserExperienceCardDesign(
                userName: 'Shuklat Nair',
                userEmail: 'shuklat@gmail.com',
                skillName: 'Jave Core',
                oldCompany: 'Amazon India',
                yearExperience: 'Three Year',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                hireTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
