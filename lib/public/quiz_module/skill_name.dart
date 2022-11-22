import 'package:flutter/material.dart';

class SkillName extends StatefulWidget {
  const SkillName({Key? key}) : super(key: key);

  @override
  State<SkillName> createState() => _SkillNameState();
}

class _SkillNameState extends State<SkillName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          Center(
              child: Text("Skill Name"),
          ),
        ],
      ),
    );
  }
}
