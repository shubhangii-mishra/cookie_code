import 'package:cookie_code/Utils/contactUs.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecieverDetails extends StatefulWidget {
  const RecieverDetails({super.key});

  @override
  State<RecieverDetails> createState() => _RecieverDetailsState();
}

class _RecieverDetailsState extends State<RecieverDetails> {
  late String countryValue;
  late String stateValue;
  late String cityValue;
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg8.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Text(
                    'Reciever\'s Details',
                    style: GoogleFonts.abrilFatface(fontSize: 30, color: Color(0xff940a28)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Reciever\'s Name',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black), //<-- SEE HERE
                                ),
                                hintText: 'Reciever\'s full name'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Reciever\'s Contact number',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black), //<-- SEE HERE
                                ),
                                hintText: 'Contact Number'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Reciever\'s Email address',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black), //<-- SEE HERE
                                ),
                                hintText: 'email'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Details of the reciever for delivery',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        SelectState(
                          onCountryChanged: (value) {
                            setState(() {
                              countryValue = value;
                            });
                          },
                          onStateChanged: (value) {
                            setState(() {
                              stateValue = value;
                            });
                          },
                          onCityChanged: (value) {
                            setState(() {
                              cityValue = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Complete address of the reciever',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'House number/flat number/floor',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black), //<-- SEE HERE
                                ),
                                hintText: 'email'),
                          ),
                        ),
                        Text(
                          'Society name',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black), //<-- SEE HERE
                                ),
                                hintText: 'society name'),
                          ),
                        ),
                        Text(
                          'Reciever\'s pincode',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.black), //<-- SEE HERE
                                ),
                                hintText: 'pincode'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: agree,
                                activeColor: Color(0xff940a28),
                                onChanged: (value) {
                                  setState(() {
                                    agree = value ?? false;
                                  });
                                }),
                            const Text(
                              'I have re-checked the details of the \nreciever filled above', textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Center(
                          child: ElevatedButton(
                            // go to the next page only when the checkbox is ticked
                            onPressed: () {
                              agree
                                  ? Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ContactUs(),
                                ),
                              )
                                  : null;
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Confirm',
                                style: GoogleFonts.niconne(
                                  fontSize: 50,
                                  color: Color(0xff940a28),
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      side: BorderSide(color: Color(0xff82053b)))),
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
