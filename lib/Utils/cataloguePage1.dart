import 'package:cookie_code/Utils/writeMessage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CataloguePage1 extends StatefulWidget {
  const CataloguePage1({super.key});

  @override
  State<CataloguePage1> createState() => _CataloguePage1State();
}

class _CataloguePage1State extends State<CataloguePage1> {
  final relation = [
    'mother',
    'father',
    'friend',
    'brother',
    'sister',
    'uncle',
    'Aunt',
    'teacher',
    'student'
        'other'
  ];
  String dropdownvalue1 = 'friend';
  final occasion = [
    'birthday',
    'anniversay',
    'diwali',
    'holi',
    'rakshabandhan',
    'proposal',
    'mothers\' day',
    'fathers\' day' 'friendshipday',
    'chrismas',
    'other'
  ];
  final color =[
    'bubble pink',
    'the blue hue',
    'the sheer cheer',
    'splash of green',
    'elegant white'
  ];
  String dropdownvalue3 = 'elegant white';
  String dropdownvalue2 = 'birthday';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg8.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                  'I want to write this letter to',
                  style: GoogleFonts.aladin(
                      fontSize: 30,
                      color: Color(0xff82053b)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButton(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    hint: SizedBox(
                        width: 250,
                        child: Text(
                          'Relation',
                          style: TextStyle(fontSize: 20),
                        )),
                    value: dropdownvalue1,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: relation.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                      });
                    }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'On the occasion',
                  style: GoogleFonts.aladin(
                      fontSize: 30,
                      color: Color(0xff82053b)
                  ),
                ),
                DropdownButton(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    hint: Text(
                      'Occasion',
                      style: TextStyle(fontSize: 20),
                    ),
                    value: dropdownvalue2,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: occasion.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue2 = newValue!;
                      });
                    }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Choose the color',
                  style: GoogleFonts.aladin(fontSize: 30,
                      color: Color(0xff82053b)),
                ),
                DropdownButton(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    hint: Text(
                      'color',
                      style: TextStyle(fontSize: 20),
                    ),
                    value: dropdownvalue3,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: color.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue3 = newValue!;
                      });
                    }),
                SizedBox(
                  height: 5,
                ),

              ]),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('images/bubble_pink.png', height: 200,),
                    Image.asset('images/the_blue_hue.png', height: 200,),
                    Image.asset('images/the_sheer_cheer.png', height: 200,),
                    Image.asset('images/splash_of_green.png', height: 200,),
                    Image.asset('images/elegant_white.png', height: 200,),
                  ],
                )
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left:30),
              child: Text('Scroll to see all the colors -->',

                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff82053b)
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => WriteMessage(),
                        ),
                      );
                    },
                    child: Text('Next',
                      style: GoogleFonts.niconne(
                          fontSize: 40,
                          color: Color(0xff82053b)
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              side: BorderSide(color: Color(0xff82053b))
                          )
                      ),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(
                          Colors.white12),
                    )
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
