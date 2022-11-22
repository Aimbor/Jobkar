import 'package:flutter/material.dart';

class ResultActivity extends StatefulWidget {
  const ResultActivity({Key? key}) : super(key: key);

  @override
  State<ResultActivity> createState() => _ResultActivityState();
}

class _ResultActivityState extends State<ResultActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const[
          Center(
            child: Text('Result page'),
          ),
        ],
      ),
    );
  }
}
