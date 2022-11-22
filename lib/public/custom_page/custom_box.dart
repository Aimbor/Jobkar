import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBox extends StatelessWidget {
  final String id;
  final String company;
  final String jobTitle;
  final String salary;
  final String jobFor;
  final String requirements;
  final String address;
  final VoidCallback callTap;
  final VoidCallback chatTap;
  final VoidCallback favouriteTap;
  final VoidCallback infotap;

  const CustomBox({
    Key? key,
    required this.id,
    required this.company,
    required this.jobTitle,
    required this.salary,
    required this.jobFor,
    required this.requirements,
    required this.address,
    required this.callTap,
    required this.chatTap,
    required this.favouriteTap,
    required this.infotap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 8.0, right: 8.0, bottom: 4.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        children: [
                          Text(
                            'Company :',
                            style:
                            GoogleFonts.roboto(color: Colors.black54),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            company,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        children: [
                          Text(
                            'Job Title :',
                            style:
                            GoogleFonts.roboto(color: Colors.black54),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            jobTitle,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        children: [
                          Text(
                            'Salary :',
                            style:
                            GoogleFonts.roboto(color: Colors.black54),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            salary,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        children: [
                          Text(
                            'Job for :',
                            style:
                            GoogleFonts.roboto(color: Colors.black54),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            jobFor,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        children: [
                          Text(
                            'Requirements :',
                            style:
                            GoogleFonts.roboto(color: Colors.black54),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            requirements,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        children: [
                          Text(
                            'Address :',
                            style:
                            GoogleFonts.roboto(color: Colors.black54),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            address,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.grey),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: callTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.phone, size: 18),
                        Text(
                          'Call',
                          style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: chatTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.bubble_left,
                            size: 18),
                        Text(
                          'Chat',
                          style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: favouriteTap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.heart, size: 18),
                        Text(
                          'Save',
                          style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: infotap,
                    child: Column(
                      children: [
                        const Icon(CupertinoIcons.info,
                            size: 18),
                        Text(
                          'info',
                          style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
