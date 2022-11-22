import 'package:flutter/material.dart';

import '../custom_card/example_saved_card.dart';

class SavedUser extends StatefulWidget {
  const SavedUser({Key? key}) : super(key: key);

  @override
  State<SavedUser> createState() => _SavedUserState();
}

class _SavedUserState extends State<SavedUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              SizedBox(height: 8.0),
              ExampleCard(),
              SizedBox(height: 8.0),
              ExampleCard(),
              SizedBox(height: 8.0),
              ExampleCard(),
              SizedBox(height: 8.0),
              ExampleCard(),
              SizedBox(height: 8.0),
              ExampleCard(),
            ],
          ),
        ),
      ),
    );
  }
}
