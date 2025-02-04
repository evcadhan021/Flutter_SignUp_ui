import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/picture.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.15),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 500),
            Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "SIGN UP WITH",
                        style: GoogleFonts.alegreyaSans(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Color(0xFF3b5998),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.red,
                          child: Icon(
                            FontAwesomeIcons.google,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Color(0xFF555555),
                          child: Icon(
                            FontAwesomeIcons.apple,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Center(
              child: Text(
                "Already Have Account?",
                style: GoogleFonts.alegreyaSans(
                    fontSize: 15.0, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(
                "LOGIN",
                style: GoogleFonts.alegreyaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
