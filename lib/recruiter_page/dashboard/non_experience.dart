import 'package:flutter/material.dart';

import '../custom_card/non_experience_course_category.dart';
import 'non_experience_user_name_list.dart';

class NonExperience extends StatefulWidget {
  const NonExperience({Key? key}) : super(key: key);

  @override
  State<NonExperience> createState() => _NonExperienceState();
}

class _NonExperienceState extends State<NonExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            NonExperienceCourseCategory(
              skillName: 'Java Core',
              skillDescription: 'Android Application Development',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NonExperienceUserNameList()),
                );
              },
            ),
            const SizedBox(height: 8.0),
            NonExperienceCourseCategory(
              skillName: 'Spring Boot',
              skillDescription: 'Business Web Application Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
            NonExperienceCourseCategory(
              skillName: 'Real State',
              skillDescription: 'Sales Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
            NonExperienceCourseCategory(
              skillName: 'Flutter Development',
              skillDescription: 'Cross Application Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
            NonExperienceCourseCategory(
              skillName: 'React JS',
              skillDescription: 'Web Application Development',
              onTap: () { },
            ),
            const SizedBox(height: 8.0),
            NonExperienceCourseCategory(
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
