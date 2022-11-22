import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  final bool notificationValue = true;
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
              Text("Notification",
                style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Text("Notification change",
                      style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      onTap: (){},
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300]
                        ),
                        child:const Icon(Icons.notifications),
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.grey[800],
                        activeColor: Colors.white,
                        value: notificationValue,
                        onChanged: (bool? value){
                          setState(() {
                            notificationValue != value;
                          });
                        },
                      ),
                      subtitle: Text("Change notification",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),),
                      title: Text("Notification",
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                  ),
                  child: Center(
                    child: Text("Apply",style: GoogleFonts.lato(
                        color: Colors.white,fontSize: 15
                        ,fontWeight: FontWeight.normal),
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

