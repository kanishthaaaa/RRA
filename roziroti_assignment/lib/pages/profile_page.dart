import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    size: 35,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Profile',
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: const Color.fromARGB(255, 199, 206, 244),
                  child: Text(
                    'K',
                    style: GoogleFonts.poppins(
                      fontSize: 56,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Kanishtha Sahu',
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Text(
                '+11 111 556 443',
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
