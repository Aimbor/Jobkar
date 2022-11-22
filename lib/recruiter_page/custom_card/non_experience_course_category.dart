import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NonExperienceCourseCategory extends StatelessWidget {
  final String skillName;
  final String skillDescription;
  final VoidCallback onTap;

  const NonExperienceCourseCategory({
    Key? key,
    required this.skillName,
    required this.skillDescription,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200]),
          child: const Center(
            child: Icon(CupertinoIcons.shield,
                color: Colors.black),
          ),
        ),
        title: Text(
          skillName,
          style: GoogleFonts.lato(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(CupertinoIcons.chevron_forward, size: 20),
        subtitle: Text(
         skillDescription,
          style: GoogleFonts.lato(fontSize: 12),
        ),
      ),
    );
  }
}
