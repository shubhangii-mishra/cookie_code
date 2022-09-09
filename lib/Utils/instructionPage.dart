import 'package:cookie_code/Utils/cataloguePage1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionPage extends StatefulWidget{
  const InstructionPage({super.key});

  @override
  State<InstructionPage> createState() => _InstructionPageState();


}

class _InstructionPageState extends State<InstructionPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg9.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
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
                      Icon(Icons.circle, size: 15, color: Color(0xff751455)),
                      SizedBox(width:10),
                      Text('How it works',
                        style: GoogleFonts.frederickaTheGreat(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline
                        ),
                      ),
                      SizedBox(width:10),
                      Icon(Icons.circle, size: 15, color: Color(0xff751455)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.favorite, color: Colors.black, size: 40,),
                      Text('Tell us who',
                        style: GoogleFonts.chewy(
                            fontSize: 30,
                            color: Color(0xff751455)
                        ),
                      ),
                      SizedBox(
                        width: 280,
                        child: Text('you want to write and a few details',
                          style: GoogleFonts.indieFlower(
                              fontSize: 24,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.border_color, color: Colors.black, size: 40,),
                      Text('Write your message',
                        style: GoogleFonts.chewy(
                            fontSize: 30,
                            color: Color(0xff751455)
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Text('either completely or give us pointer, so that we can draft it for you',
                          style: GoogleFonts.indieFlower(
                              fontSize: 23,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.black, size: 40,),
                      Text('Have it delivered',
                        style: GoogleFonts.chewy(
                            fontSize: 30,
                            color: Color(0xff751455)
                      )),
                      SizedBox(
                        width: 320,
                        child: Text('on your behalf and be assured that your message will be felt',
                          style: GoogleFonts.indieFlower(
                              fontSize: 23,
                              letterSpacing: 1,
                              color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CataloguePage1(),
                          ),
                        );
                      },
                      child: Text('Start Writing',
                        style: GoogleFonts.niconne(
                          fontSize: 40,
                          color: Colors.black
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
                            Colors.transparent),
                      )
                  ),

                )
              ],
            )
          ),
        ),
      ),
    );
  }
}