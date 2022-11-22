import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../dashboard/dashboard_page.dart';
import 'signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showSpinner = false;
  final systemColor = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
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
                    padding:const EdgeInsets.only(left: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextFormField(
                      controller: nameController,
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    padding:const EdgeInsets.only(left: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 50,
                    padding:const EdgeInsets.only(left: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[900]),
                      child: Center(
                        child: Text(
                          'SignUp',
                          style: GoogleFonts.raleway(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text('By Signing Up You Agree to Our',style: GoogleFonts.lato(color: Colors.black54,fontSize: 17),),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Terms & Privacy Policy',
                      style: GoogleFonts.lato(color: Colors.blue[900],fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SignIn(),),);
                        },
                        child: Text(
                          "SignIn",
                          style: GoogleFonts.raleway(
                              fontSize: 14,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600),
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


/**/