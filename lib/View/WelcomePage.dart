import 'package:app1/View/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/4.png',
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  Text(
                    "Essential",
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Women Shoes",
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.grey[120],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Nike Air",
                style: GoogleFonts.abyssinicaSil(
                  fontWeight: FontWeight.bold,
                  fontSize: 65,
                ),
              ),
              Text(
                "Smart, Gorgeous & Fashionable Collection",
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                  color: Colors.grey[120],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 38,
                    child: Divider(
                      color: Colors.blue[400],
                      thickness: 2,
                      endIndent: 1,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(
                        right: 25,
                        left: 25,
                        top: 15,
                        bottom: 15,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nav()),
                      );
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
