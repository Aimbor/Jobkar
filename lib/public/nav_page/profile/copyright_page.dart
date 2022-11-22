import 'package:flutter/material.dart';

class CopyRightPage extends StatefulWidget {
  const CopyRightPage({Key? key}) : super(key: key);

  @override
  State<CopyRightPage> createState() => _CopyRightPageState();
}

class _CopyRightPageState extends State<CopyRightPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Copy Right page"),
      ),
    );
  }
}
