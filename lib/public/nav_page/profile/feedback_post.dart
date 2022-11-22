import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FeedbackPost extends StatefulWidget {
  const FeedbackPost({Key? key}) : super(key: key);

  @override
  State<FeedbackPost> createState() => _FeedbackPostState();
}

class _FeedbackPostState extends State<FeedbackPost> {
  final feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 90, bottom: 60),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Feedback',
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Colors.black54),
                    ),
                    Text(
                      'support@jobkar.com',
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Colors.black54),
                    ),
                    Text(
                      'Write your feedback for us',
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[300]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(
                          controller: feedbackController,
                          decoration: InputDecoration(
                            hintText: 'Writer your feedback. . .',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.raleway(
                                fontSize: 15, color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () { },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: GoogleFonts.raleway(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
