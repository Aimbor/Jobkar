import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class JobFrom extends StatefulWidget {
  const JobFrom({Key? key}) : super(key: key);

  @override
  State<JobFrom> createState() => _JobFromState();
}

class _JobFromState extends State<JobFrom> {
  final systemColor =
  const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  final jobController = TextEditingController();
  final companyController = TextEditingController();
  final experienceController = TextEditingController();
  final salaryController = TextEditingController();
  final addressController = TextEditingController();
  final requirementsController = TextEditingController();
  final myStyle = GoogleFonts.lato(
      fontWeight: FontWeight.normal, color: Colors.black54, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Job form',
                  style: GoogleFonts.raleway(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Center(
                child: Text(
                  'create a new job for hire',
                  style: GoogleFonts.raleway(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: companyController,
                style: myStyle,
                maxLength: 15,
                decoration: InputDecoration(
                    hintStyle: myStyle, hintText: 'Company name'),
              ),
              TextFormField(
                controller: jobController,
                style: myStyle,
                maxLength: 20,
                decoration: InputDecoration(
                    hintStyle: myStyle, hintText: 'Job title'),
              ),
              TextFormField(
                controller: experienceController,
                style: myStyle,
                maxLength: 18,
                decoration: InputDecoration(
                    hintStyle: myStyle, hintText: 'Experience type'),
              ),
              TextFormField(
                controller: salaryController,
                style: myStyle,
                maxLength:15,
                decoration:
                InputDecoration(hintStyle: myStyle, hintText: 'Salary'),
              ),
              TextFormField(
                controller: addressController,
                style: myStyle,
                maxLength: 30,
                decoration:
                InputDecoration(hintStyle: myStyle, hintText: 'Address'),
              ),
              TextFormField(
                controller: requirementsController,
                style: myStyle,
                maxLength: 30,
                maxLines: 2,
                decoration: InputDecoration(
                    hintStyle: myStyle, hintText: 'Requirements'),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  //checkPost();
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black54),
                  child: Center(
                    child: Text(
                      "Publish",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
