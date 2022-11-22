import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeSettings extends StatefulWidget {
  const ThemeSettings({Key? key}) : super(key: key);

  @override
  State<ThemeSettings> createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
  bool darkValue = false;
  bool brightValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Change Theme",
                style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      "Select Theme",
                      style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      onTap: () {},
                      trailing: Checkbox(
                        checkColor: Colors.grey[800],
                        activeColor: Colors.white,
                        value: darkValue,
                        onChanged: (bool? value) {
                          setState(() {
                            darkValue != value;
                          });
                        },
                      ),
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300]),
                        child: const Icon(Icons.dark_mode_rounded),
                      ),
                      subtitle: Text(
                        "Dark theme",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      title: Text(
                        "Dark",
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      trailing: Checkbox(
                        checkColor: Colors.grey[800],
                        activeColor: Colors.white,
                        value: brightValue,
                        onChanged: (bool? value) {
                          setState(() {
                            brightValue != value;
                          });
                        },
                      ),
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300]),
                        child: const Icon(Icons.light_mode_rounded),
                      ),
                      subtitle: Text(
                        "Light theme",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                      title: Text(
                        "Light",
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      "Apply",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
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
