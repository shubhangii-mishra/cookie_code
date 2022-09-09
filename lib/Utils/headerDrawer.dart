import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});
  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: 150,
          ),
          // Container(
          //   margin: EdgeInsets.only(bottom: 10),
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(image: AssetImage('images/logo.png')
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 25,
          ),
          Text('The Cookie Code',
              style: GoogleFonts.sail(color: Color(0xff2ea678), fontSize: 30, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
