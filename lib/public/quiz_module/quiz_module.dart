import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkar/public/quiz_module/result_activity.dart';
import 'package:jobkar/public/quiz_module/skill_name.dart';


class QuizModule extends StatefulWidget {
  const QuizModule({Key? key}) : super(key: key);

  @override
  State<QuizModule> createState() => _QuizModuleState();
}

class _QuizModuleState extends State<QuizModule> {
  final systemColor = SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[200],
      statusBarColor: Colors.transparent
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          endDrawer:const Drawer(),
          appBar: AppBar(
            backgroundColor: const Color(0XFF22001E),
            elevation: 0,
            titleSpacing: 20.0,
            automaticallyImplyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Jubin Nautiyal",style: GoogleFonts.lato(color: Colors.white,fontSize: 18),),
                Text("Software Developer",style: GoogleFonts.lato(fontSize: 12,color: Colors.white),),
              ],
            ),
            bottom: const TabBar(
              labelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorWeight: 3.0,
                tabs: [
                  Tab(text: 'Course'),
                  Tab(text: 'Activity'),
                ]
            ),
          ),
          body:const TabBarView(
            children: [
              SkillName(),
              ResultActivity()
            ],
          ),
        ),
    );
  }
}
