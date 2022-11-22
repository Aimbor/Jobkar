import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../custom_page/custom_box.dart';
import 'collection_post.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
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
          "Collection",
          style: GoogleFonts.raleway(
              color: Colors.black, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
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
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        placeCard('Mumbai', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CollectionPost(title: 'Mumbai')));
                        }),
                        placeCard('Hyderabad', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CollectionPost(title: 'Hyderabad')));
                        }),
                        placeCard('Delhi', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CollectionPost(title: 'Delhi')));
                        }),
                        placeCard('Gurugram', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CollectionPost(title: 'Delhi')));
                        }),
                        placeCard('Bangalore', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CollectionPost(title: 'Bangalore')));
                        }),
                        placeCard('Noida', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CollectionPost(title: 'Noida')));
                        }),
                      ],
                    ),
                  ],
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
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                infotap: () {},
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
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                infotap: () {},
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
                callTap: () {},
                chatTap: () {},
                favouriteTap: () {},
                infotap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget placeCard(String place, VoidCallback onTap) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200]),
            child: const Icon(
              CupertinoIcons.placemark,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          place,
          style: GoogleFonts.lato(
              fontSize: 10, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ],
    );
  }
}
