import 'package:cookie_code/Utils/recieverDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
                'User Details',
                style: GoogleFonts.abrilFatface(
                  fontSize: 30,
                  color: Color(0xff940a28),
                ),
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
                      'Your Name',
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
                            hintText: 'Your full name'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Contact number',
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
                      'Email address',
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
                    //Text('Country', style: GoogleFonts.rochester(fontSize: 20),),
                    //Text('Gender', style: GoogleFonts.rochester(fontSize: 20),),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    }),
                const Text(
                  'I have rechecked the details above',
                  style: TextStyle(
                      fontSize: 17,
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
                            builder: (context) => RecieverDetails(),
                          ),
                        )
                      : null;
                },
                child: Text(
                  'Confirm',
                  style: GoogleFonts.niconne(
                    fontSize: 40,
                    color: Color(0xff940a28),
                    //fontWeight: FontWeight.bold
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
          ],
        ),
      ),
    ));
  }
}
