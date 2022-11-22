import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerHelp extends StatefulWidget {
  const CustomerHelp({Key? key}) : super(key: key);

  @override
  State<CustomerHelp> createState() => _CustomerHelpState();
}

class _CustomerHelpState extends State<CustomerHelp> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final systemColor =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome',
                  style: GoogleFonts.raleway(fontWeight: FontWeight.normal,
                      fontSize: 25,color: Colors.black54),
                ),
                Text('support@jobkar.com',
                  style: GoogleFonts.raleway(fontWeight: FontWeight.w600,
                      fontSize: 28,color: Colors.black54),
                ),
                Text('please share your problem with us',
                  style: GoogleFonts.raleway(fontWeight: FontWeight.normal,
                      fontSize: 15,color: Colors.black54),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      maxLines: 1,
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'Problem',
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.raleway(fontSize: 16,color: Colors.black54)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[300]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: descriptionController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Describe your problem with account details . . .',
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.raleway(fontSize: 16,color: Colors.black54)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black
                    ),
                    child: Center(
                      child: Text("Submit",style: GoogleFonts.raleway(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
