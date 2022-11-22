import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_page/custom_user_card.dart';
import '../message/chat_room.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  final searchController = TextEditingController();
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "People",
          style: GoogleFonts.raleway(
              color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      style: GoogleFonts.lato(
                          fontSize: 16, fontWeight: FontWeight.w700),
                      controller: searchController,
                      onChanged: (value) {
                        search = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Search jobs',
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.dehaze,
                          size: 23,
                          color: Colors.black54,
                        ),
                        hintStyle: GoogleFonts.lato(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200]),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
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
