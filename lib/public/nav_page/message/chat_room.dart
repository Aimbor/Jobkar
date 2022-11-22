import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key,}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.blue[500],
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child:const Center(
                child: Icon(CupertinoIcons.person_alt,color: Colors.black,),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 8.0),
                Text(
                  'My Name',
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'myname@gmail.com',
                  style: GoogleFonts.raleway(
                      fontSize: 13, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.videocam,size: 30),
          ),
          PopupMenuButton(
            icon:const Icon(Icons.more_vert_sharp,color: Colors.white),
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Report"),
                  ),

                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Block"),
                  ),
                ];
              },
              onSelected:(value) {
                if (value == 0) {
                  print("My account menu is selected.");
                } else if (value == 1) {
                  print("Settings menu is selected.");
                }
              }
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)
              ),
              color: Colors.white
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Icon(CupertinoIcons.folder,color : Colors.blue[500],),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: TextFormField(
                      controller: messageController,
                      decoration:const InputDecoration(
                        hintText: 'send a message . . .',
                        border: InputBorder.none
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200]
                      ),
                      child: Center(
                        child: Icon(CupertinoIcons.location_fill,color: Colors.blue[500],),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
