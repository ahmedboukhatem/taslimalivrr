
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AddPhoneNumber extends StatefulWidget {
  const AddPhoneNumber({Key? key}) : super(key: key);
  static const String idScreen = "AddPhoneNumber";


  @override
  State<AddPhoneNumber> createState() => _AddPhoneNumberState();
}

class _AddPhoneNumberState extends State<AddPhoneNumber> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'DZ';
  PhoneNumber number = PhoneNumber(isoCode: 'DZ');
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(

        child: Column(


          children: <Widget>[

            Container(
                height: 370,
                width: 370,
                child:
                Image.asset('assets/delevery-01.png')),


            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter your number',
                  style:GoogleFonts.mulish(
                    textStyle: const TextStyle(fontSize: 30
                      , color: Colors.black,

                    ),
                    fontWeight:FontWeight.bold ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20 , bottom: 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'We will send you a code to verify your phone number',
                  style: TextStyle(color:  Color(0xff6d6d6d),),

                ),
              ),
            ),
            const SizedBox(
              height: 40,

            ),
            // SvgPicture.asset('assets/delivery.svg',),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20 , top: 5),
              child: Stack(
                children: [


                  Container(

                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    height: 58,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffFF6446),  width: 1.5, ),

                    ),
                    child: SingleChildScrollView(
                      child: Stack(
                        children: [
                          InternationalPhoneNumberInput(

                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },

                            selectorConfig: const SelectorConfig(
                              showFlags: true,
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            ignoreBlank: false,
                            initialValue: number,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: const TextStyle(color: Colors.black),
                            textFieldController: controller,
                            formatInput: false,
                            maxLength: 9,
                            keyboardType:
                            const TextInputType.numberWithOptions(signed: true, decimal: true),

                            cursorColor: Colors.black,
                            inputDecoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                              border: InputBorder.none,

                              hintText: 'your phone number',
                              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 14, fontFamily:'Mulish'),
                            ),
                            onSaved: (PhoneNumber number) {
                              print('On Saved: $number');
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0, right: 20 , top: 5),
            //   child: Container(
            //     height: 50,
            //     child: const TextField(decoration: InputDecoration(
            //       enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(4), ),
            //           borderSide: BorderSide( color:Color(0xffFF6446), width: 2)
            //     ),
            //       focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(4), ),
            //           borderSide: BorderSide( color:Color(0xffFF4721), width: 2)
            //       ),
            //       hintText: " add your phone number" ,hintStyle:TextStyle(color:Colors.grey , fontSize: 14),
            //       contentPadding: EdgeInsets.all(20),
            //       border: OutlineInputBorder(
            //         borderRadius:BorderRadius.all(Radius.circular(4),
            //
            //         ),
            //
            //       ),
            //
            //     ),keyboardType:TextInputType.number ,),
            //   ),
            // ),
            const SizedBox(height: 200
              ,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                    onPressed: () {

                    },

                    color: const Color(0xffEBEBEB),
                    textColor: Colors.white,
                    child:   Container(
                      height: 50.0,
                      width: 250,
                      child: const Center(
                        child: Text(
                          'CONFIRM',
                          style: TextStyle(

                            fontSize: 16,
                            color:  Color(0xff555B6A),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ),

          ],
        ),
      ),

      // This trailing comma makes auto-fnormatting nicer for  build methods.
    );;
  }
}

