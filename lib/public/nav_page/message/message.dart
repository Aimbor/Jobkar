import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_page/custom_user_card.dart';
import 'chat_room.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Message",
          style: GoogleFonts.raleway(
              color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            CustomUserCard(userName: 'Shivani Tiwari', userBio: 'Web Developer',onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatRoom()));
            }),
            const SizedBox(height: 8.0),
            CustomUserCard(userName: 'Niranjan Pal', userBio: 'Sales & Managements',onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatRoom()));
            }),
            const SizedBox(height: 8.0),
            CustomUserCard(userName: 'Vijay Kumar', userBio: 'Mechanical Engineer',onTap: (){}),
            const SizedBox(height: 8.0),
            CustomUserCard(userName: 'Shilpi Shahani', userBio: 'Digital Marketar',onTap: (){}),
            const SizedBox(height: 8.0),
            CustomUserCard(userName: 'Niranjan Pal', userBio: 'Sales & Managements',onTap: (){}),
            const SizedBox(height: 8.0),
            CustomUserCard(userName: 'Vijay Kumar', userBio: 'Mechanical Engineer',onTap: (){}),
            const SizedBox(height: 8.0),
            CustomUserCard(userName: 'Shilpi Shahani', userBio: 'Digital Marketar',onTap: (){}),
          ],
        ),
      ),
    );
  }
}
