import 'package:flutter/material.dart';

import '../custom_card/example_hired_card.dart';


class HireUser extends StatefulWidget {
  const HireUser({Key? key}) : super(key: key);

  @override
  State<HireUser> createState() => _HireUserState();
}

class _HireUserState extends State<HireUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 8.0),
              HiredCardExample(),
              SizedBox(height: 8.0),
              HiredCardExample(),
              SizedBox(height: 8.0),
              HiredCardExample(),
              SizedBox(height: 8.0),
              HiredCardExample(),
              SizedBox(height: 8.0),
              HiredCardExample(),
            ],
          ),
        ),
      ),
    );
  }
}
