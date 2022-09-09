import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    _makingPhoneCall() async {
      var url = Uri.parse("tel:+919310315580");
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    _launchURL() async {
      const url = 'https://www.instagram.com/thecookiecode11/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg/bg4.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
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
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 15, color: Color(0xff2ea678)),
                      SizedBox(width: 10),
                      Text(
                        'Contact us',
                        style: GoogleFonts.kurale(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff96057c),
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.circle, size: 15, color: Color(0xff2ea678)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 320.0,
                      child: TextButton(
                          onPressed: () {
                            onPressed: _makingPhoneCall;
                          },
                          child: Row(
                            children: [
                              Icon(Icons.phone, color: Colors.black,),
                              SizedBox(
                                width: 20,
                              ),
                              const Text(
                                '9310315580',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 320.0,
                      //height: 120.0,
                      child: TextButton(
                        onPressed: _launchURL,
                        child: Row(
                          children: [
                            Icon(Icons.store, color: Colors.black,),
                            SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'thecookiecode11/',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  height: 5,
                  thickness: 5,
                  indent: 30,
                  endIndent: 30,
                  color: Colors.black26,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/palludii.jpg'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Palak Tripathi',
                        // style: TextStyle(

                        style: GoogleFonts.signikaNegative(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        'Founder',
                        style: GoogleFonts.signikaNegative(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 90,
                        child: Text(
                          'Hi everyone! I am Palak Tripathi, and this, is THE COOKIE CODE.I am a writer and this idea that popped in my mind one usual day resonates with my belief that words can heal any ailing soul❤.Personally, I love receiving letters, and many a times I have noticed that people struggle to find the right words to pour their feelings on paper.This is exactly where The Cookie Code is coming to help!You can share details about the person you want to send a letter to, like what is the occasion, what you want to say to them, how you feel about them and we will give words to your thoughts💕Once you approve the letter, it will be handwritten by us under your name and will be posted to the person you want to❤',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.squarePeg(
                            fontSize: 30,

                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
