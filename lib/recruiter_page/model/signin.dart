import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobkar/recruiter_page/model/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool showSpinner = false;

  final systemColor =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SignIn",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 30),
              ),
              Text(
                "Welcome in Jobkar",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontSize: 26),
              ),
              Text(
                "Powered by Aimbor",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 15),
              ),
              const SizedBox(height: 50),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.raleway(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Enter email',
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.raleway(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  style: GoogleFonts.raleway(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.raleway(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ForgotPassword(),
                      //   ),
                      // );
                    },
                    child: Text(
                      "Forgot Password",
                      style: GoogleFonts.raleway(
                          fontSize: 14,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[900]),
                  child: Center(
                    child: Text(
                      'SignIn',
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.raleway(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: Text(
                        "SignUp",
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
