import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomUserCard extends StatelessWidget {
  final String userName;
  final String userBio;
  final VoidCallback onTap;
  const CustomUserCard({Key? key,required this.userName,required this.userBio,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200]
              ),
              child:const Center(
                child: Icon(CupertinoIcons.person),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 8.0),
                Text(userName,style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w700),),
                Text(userBio,style: GoogleFonts.roboto(fontSize: 11,fontWeight: FontWeight.normal),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
