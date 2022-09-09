import 'package:cookie_code/Utils/contactUs.dart';
import 'package:cookie_code/Utils/feedBack.dart';
import 'package:cookie_code/Utils/headerDrawer.dart';
import 'package:cookie_code/Utils/instructionPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //Color(0xff2ea678)
          backgroundColor: Color(0xff2ea678),
          //toolbarHeight: 80,
          centerTitle: true,
          title: Text('The Cookie Code', style: GoogleFonts.sail(fontSize: 30)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('images/logo.png', width: 200),
                  SizedBox(
                    width: 300,
                    height: 90,
                    child: Text(
                      'Handwritten  letters  curated  with  love,  right  at  your  doorstep!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.squarePeg(
                        fontSize: 30,

                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 70,
                    thickness: 5,
                    endIndent: 70,
                  ),
                  SizedBox(
                    width: 300,
                    height: 80,
                    child: Text(
                      'Starting at 189 INR only\nmessage upto 200 words*',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        wordSpacing: 5,
                        fontSize: 18,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => InstructionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Get a letter written',
                        style: GoogleFonts.loveYaLikeASister(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          primary: Color(0xff8ca140),
                          padding: EdgeInsets.all(20)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    //indent: 30,
                    thickness: 2,
                    //endIndent: 30,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle, size: 15, color: Color(0xff2ea678)),
                        SizedBox(width: 10),
                        Text(
                          'Why handwritten letter?',
                          style: GoogleFonts.kurale(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2ea678),
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.circle, size: 15, color: Color(0xff2ea678)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 350,
                      child: Text(
                        'Penning down thoughts may come across as an old-fashioned way of expressing in this era of instant messages. But, if you believe various surveys conducted for best gifting options, a handwritten letter still is the best-personalised gift you can give someone, yes second to your time. A handwritten letter shows how much time you must have invested in coming up with the exact words, as you cannot delete a wrong word in a handwritten letter with a click of a button like you do in an email or a message. Spammed inbox with ballads of love or apologies may seem like a good and more accessible idea but holding a love letter with a smile or sleeping with a sorry letter under the pillow is still an unmatchable magic.',
                        style: GoogleFonts.tillana(
                            //fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff01451e)),
                        textAlign: TextAlign.justify,
                      )),
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle, size: 15, color: Color(0xff2ea678)),
                        SizedBox(width: 10),
                        Text(
                          'Why us?',
                          style: GoogleFonts.kurale(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2ea678),
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.circle, size: 15, color: Color(0xff2ea678)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      Image.asset('images/skilled_writer.png', width: 200),
                      Image.asset('images/support.png', width: 200),
                      Image.asset('images/budget.png', width: 200),
                      Image.asset('images/customizable.png', width: 200),
                      Image.asset('images/privacy.png', width: 200),
                      Image.asset('images/valueformoney.png', width: 200),
                      //Image.asset('images/budget.png', width: 200),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [HeaderDrawer(), DrawerList()],
          ),
        ),
      ),
    );
  }

  Widget DrawerList() {
    return Container(
      color: Color(0xff2ea678),
      padding: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          menuItems(1, "Dashboard", Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItems(1, "Order", Icons.shopping_bag,
              currentPage == DrawerSections.orders ? true : false),
          menuItems(1, "Contact us", Icons.contact_page,
              currentPage == DrawerSections.contactUs ? true : false),
          menuItems(1, "Feedback", Icons.feedback,
              currentPage == DrawerSections.feedback ? true : false)
        ],
      ),
    );
  }

  Widget menuItems(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactUs(),));
            } else if (id == 2) {
              currentPage = DrawerSections.orders;
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactUs(),));
            } else if (id == 3) {
              currentPage = DrawerSections.contactUs;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ContactUs(),
                ),
              );
            } else if (id == 4) {
              currentPage = DrawerSections.feedback;
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => Feedback(),
              //   ),
              // );
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              )),
              Expanded(
                  flex: 3,
                  child: Text(title,
                      style:
                          GoogleFonts.kanit(fontSize: 20, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  orders,
  contactUs,
  feedback,
}
