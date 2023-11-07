import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roziroti_assignment/pages/profile_page.dart';
import 'package:roziroti_assignment/util/my_text_field.dart';

class HomePage extends StatelessWidget {
  Function()? onTap;
  HomePage({super.key});
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 199, 206, 244),
                      child: Text(
                        'K',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Kanishtha Sahu',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    Icons.notification_add_outlined,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MyTextFields(
                  hintText: 'Search',
                  obscureText: false,
                  controller: searchController,
                  myIcon: Icon(Icons.search)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Offers',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 217, 217),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '30%',
                            style: GoogleFonts.poppins(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Today\'s Special!',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Get discount for every\norder, only valid for today.',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag,
                      size: 130,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
