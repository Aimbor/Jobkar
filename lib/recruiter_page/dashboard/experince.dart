import 'package:flutter/material.dart';
import '../custom_card/experience_course_category.dart';
import 'experience_user_name_list.dart';


class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ExperienceCourseCategory(
              skillName: 'Java Core',
              skillDescription: 'Android Application Development',
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const ExperienceUserNameList()),
                );
              },
            ),
            const SizedBox(height: 8.0),
            ExperienceCourseCategory(
              skillName: 'Spring Boot',
              skillDescription: 'Business Web Application Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
            ExperienceCourseCategory(
              skillName: 'Real State',
              skillDescription: 'Sales Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
            ExperienceCourseCategory(
              skillName: 'Flutter Development',
              skillDescription: 'Cross Application Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
           ExperienceCourseCategory(
              skillName: 'React JS',
              skillDescription: 'Web Application Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
           ExperienceCourseCategory(
              skillName: 'Python',
              skillDescription: 'Basic User Development',
              onTap: () { },
            ),
          ],
        ),
      ),
    );
  }
}
