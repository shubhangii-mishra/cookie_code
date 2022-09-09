import 'package:cookie_code/Utils/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget{
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
  }

class _CartScreenState extends State<CartScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg7.png"),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                  Center(child: Text('Your draft for the letter', style: GoogleFonts.combo(fontSize: 30, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: Color(0xff229954)), textAlign: TextAlign.center)),
                  SizedBox(
                    height: 40,
                  ),
                  Text('To', style: GoogleFonts.secularOne(fontSize: 20,)),
                  SizedBox(height: 10),
                  Text('Relation', style: GoogleFonts.rochester(fontSize: 20),),
                  SizedBox(height: 20),
                  Text('Ocassion', style: GoogleFonts.secularOne(fontSize: 20),),
                  SizedBox(height: 10),
                  Text('ocassion', style: GoogleFonts.rochester(fontSize: 20),),
                  SizedBox(height: 20),
                  Text('Your message', style: GoogleFonts.secularOne(fontSize: 20),),
                  SizedBox(height: 10),
                  Text('message......', style: GoogleFonts.rochester(fontSize: 20),),
                  SizedBox(height: 30),

                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => UserDetails(),
                              ),
                            );
                          },
                          child: Text('Continue',
                            style: GoogleFonts.niconne(
                                fontSize: 40,
                                color: Colors.white,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: BorderSide(color: Color(0xff751455))
                                )
                            ),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(
                                Color(0xff229954)),
                          )
                      ),

                    ),
                  )
                ],
              ),
            ),
          ),
        )
    ));
  }
}

