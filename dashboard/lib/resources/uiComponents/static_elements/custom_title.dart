import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'twitter-white-logo.png',
            width: 50,
            height: 50,
          ),
          SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Heppening Now',
              style: GoogleFonts.montserratAlternates(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
