import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../custom_page/custom_box.dart';
import '../../quiz_module/quiz_module.dart';
import '../drawer_page/drawer_page.dart';

class PublicHome extends StatefulWidget {
  const PublicHome({Key? key}) : super(key: key);

  @override
  State<PublicHome> createState() => _PublicHomeState();
}

class _PublicHomeState extends State<PublicHome> {
  final searchController = TextEditingController();
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer:const Drawer(
        child: DrawerPage(),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        titleSpacing: 0,
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: GoogleFonts.raleway(
              color: Colors.black, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon:const Icon(CupertinoIcons.heart),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QuizModule()),
              );
            },
            icon:const Icon(CupertinoIcons.helm),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
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
              ),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      title: Center(child: Text("Information",style: GoogleFonts.lato(),)),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Information about jobs with guarantee.',
                            style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                          ),
                          Row(
                            children: [
                              Text('In this job guarantee task',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                              ),
                              const SizedBox(width: 4.0),
                              Text('HR Community take your',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                            ],
                          ),
                          Text('test. And this test categorised into three parts',
                            style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                          ),
                          Row(
                            children: [
                              Text('1. First Round',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                              const SizedBox(width: 4.0),
                              Text('2. Second Round',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                              const SizedBox(width: 4.0),
                              Text('3. Experience Level',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('This is a',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                              ),
                              const SizedBox(width: 4.0),
                              Text('Paid Quiz',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                              const SizedBox(width: 4.0),
                              Text('test which takes',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                              ),
                              const SizedBox(width: 4.0),
                              Text('HR Community',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                            ],
                          ),
                          Text('First Round and Second Round for fresher users.',
                            style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                          ),
                          Text('And Experience level for experience users.',
                            style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                          ),
                          Row(
                            children: [
                              Text('First Round money is ',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                              ),
                              Text('Not Refundable and ',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.redAccent),
                              ),
                            ],
                          ),
                          Text('Second Round total money refundable',
                            style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                          ),
                          Row(
                            children: [
                              Text('if we did not provide you jobs and other users means',
                                style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                              ),
                            ],
                          ),
                          Text('Experience level users money total refundable.',
                            style: GoogleFonts.roboto(fontSize: 12,color: Colors.black54),
                          ),
                          const SizedBox(height: 8.0),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const QuizModule()),
                              );
                            },
                            child: Container(
                              height: 45,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text("Agree",style: GoogleFonts.lato(color: Colors.white),),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[200]
                          ),
                          child:const Center(
                            child: Icon(CupertinoIcons.helm,size: 35),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Guarantee Jobs",style: GoogleFonts.raleway(fontSize: 15,fontWeight: FontWeight.w600),),
                            Text("Get fastest jobs with guarantee easily",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.black54),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              CustomBox(
                  id: 'id',
                  company: 'Google LLC',
                  jobTitle: "Android Developer",
                  salary: '10 Lac/Year',
                  jobFor: 'Two Year Experience',
                  requirements: 'Deep knowledge must required',
                  address: 'Hyderabad Bangalore Mumbai',
                  callTap: (){},
                  chatTap: (){},
                  favouriteTap: (){},
                  infotap: (){},
              ),
              const SizedBox(height: 8.0),
              CustomBox(
                id: 'id',
                company: 'Google LLC',
                jobTitle: "Android Developer",
                salary: '10 Lac/Year',
                jobFor: 'Two Year Experience',
                requirements: 'Deep knowledge must required',
                address: 'Hyderabad Bangalore Mumbai',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                infotap: (){},
              ),
              const SizedBox(height: 8.0),
              CustomBox(
                id: 'id',
                company: 'Google LLC',
                jobTitle: "Android Developer",
                salary: '10 Lac/Year',
                jobFor: 'Two Year Experience',
                requirements: 'Deep knowledge must required',
                address: 'Hyderabad Bangalore Mumbai',
                callTap: (){},
                chatTap: (){},
                favouriteTap: (){},
                infotap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
