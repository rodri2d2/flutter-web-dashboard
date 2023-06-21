import 'package:google_fonts/google_fonts.dart';

import '../../../essencial_imports.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.bubble_chart_outlined,
            color: Color(0xff7A6BF5),
          ),
          SizedBox(width: 10),
          Text(
            'Admin',
            style: GoogleFonts.montserratAlternates(
                fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white),
          )
        ],
      ),
    );
  }
}
