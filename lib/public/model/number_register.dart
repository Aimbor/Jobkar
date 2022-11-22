import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'number_verify.dart';

class NumberRegister extends StatefulWidget {
  const NumberRegister({Key? key}) : super(key: key);

  @override
  State<NumberRegister> createState() => _NumberRegisterState();
}

class _NumberRegisterState extends State<NumberRegister> {
  final _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 210,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Mobile Register",
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Please register your mobile number",
                    style: GoogleFonts.raleway(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[400]),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200]),
                          child: Center(
                            child: Text(
                              "+91",
                              style: GoogleFonts.lato(fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[200]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: TextFormField(
                                controller: _numberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Mobile number',
                                    hintStyle: GoogleFonts.lato()),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const NumberVerify()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF21D400)),
                        child: Center(
                          child: Text(
                            "Register",
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "By register you agree our all types of Terms & Policy Conditions and",
                    style: GoogleFonts.lato(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 11),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "mobile services charges included for",
                        style: GoogleFonts.lato(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 11),
                      ),
                      const SizedBox(width: 4.0),
                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          "More information.",
                          style: GoogleFonts.lato(
                              color: const Color(0xFF21D400),
                              fontWeight: FontWeight.w600,
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
