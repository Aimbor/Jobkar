import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionPost extends StatelessWidget {
  String title;
   CollectionPost({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 5,
        backgroundColor: Colors.blue[900],
        title: Text(title,
          style: GoogleFonts.raleway(fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children:const [
            ],
          ),
        ),
      ),
    );
  }
}
