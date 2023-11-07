import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roziroti_assignment/pages/home_page.dart';
import 'package:roziroti_assignment/util/my_buttons.dart';
import 'package:roziroti_assignment/util/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                height: 60,
              ),
              Text(
                'Create your\nAccount',
                style: GoogleFonts.poppins(
                    fontSize: 40, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 60,
              ),
              MyTextFields(
                  hintText: 'Mail',
                  obscureText: false,
                  controller: emailController,
                  myIcon: Icon(Icons.mail)),
              SizedBox(
                height: 30,
              ),
              MyTextFields(
                  hintText: 'Password',
                  obscureText: true,
                  controller: passwordController,
                  myIcon: Icon(Icons.lock)),
              // Checkbox(value: value, onChanged: onChanged)
              SizedBox(
                height: 30,
              ),
              MyButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  myColor: Colors.black,
                  myText: 'Sign Up'),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    'or continue with',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(onTap: () {}, myColor: Colors.red, myText: 'Google'),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Already have an account? Sign In',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
