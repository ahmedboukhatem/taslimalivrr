
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationCode extends StatefulWidget {

  const VerificationCode({Key? key}) : super(key: key);
  static const String idScreen = "VerificationCode";

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {

    return   Scaffold(

      resizeToAvoidBottomInset: false,

      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15 , bottom: 15),
          child: Column(


            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Icon(Icons.arrow_back, size: 35)),
              const SizedBox(height: 40,),

              Container(

                alignment: Alignment.centerLeft,
                child: Column(

                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter the code',
                      style:GoogleFonts.mulish(
                        textStyle: const TextStyle(fontSize: 25
                          , color:  Color(0xff030919),
                          fontFamily:'Mulish',
                          fontWeight: FontWeight.bold,

                        ),
                        fontWeight:FontWeight.bold ,
                      ),


                    ),
                    Row(
                      children: [
                        Text(
                          'Fill in the code sent to',
                          style:GoogleFonts.mulish(
                            textStyle: const TextStyle(fontSize: 16,
                              fontFamily:'Mulish' ,
                            color:  Color(0xff030919),
                              fontWeight: FontWeight.bold,

                            ),
                            fontWeight:FontWeight.normal ,
                          ),


                        ),
                        Text(
                          ' +213663238037',
                          style:GoogleFonts.mulish(
                            textStyle: const TextStyle(fontSize: 18,
                              fontFamily:'Mulish' ,
                              color:  Color(0xff030919),
                              fontWeight: FontWeight.bold,

                            ),
                            fontWeight:FontWeight.normal ,
                          ),


                        ),
                      ],
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 120.0, top: 5, bottom: 10),
                    //   child: Text(
                    //     'Fill in the code sent to +213663238037',
                    //     style:GoogleFonts.mulish(
                    //       textStyle: const TextStyle(fontSize: 14
                    //         , color: Colors.black,
                    //
                    //       ),
                    //       fontWeight:FontWeight.w600 ,
                    //     ),
                    //
                    //
                    //   ),
                    // ),
                   ],
                ),
              ),
           const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(

                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffFF4521),  width: 2, ),

                    ),
                    child:

                      const TextField(
                        maxLength: 1,
                        textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 30.0, height: 2.0, color: Colors.black),
                        keyboardType:
                 TextInputType.numberWithOptions(signed: false, decimal: false),
                        decoration:  InputDecoration(
                          counterText: '',
                          border: InputBorder.none,

                          hintText: '*',

                          hintStyle: TextStyle( color: Colors.grey, fontSize: 30,height: 2.0, fontFamily:'Mulish',fontWeight: FontWeight.bold),
                        ),
                      ),

                  ),

                  Container(

                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffFF4521),  width: 2, ),

                    ),
                    child:

                    const TextField(
                      maxLength: 1,

                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 30.0, height: 2.0, color: Colors.black),
                      keyboardType:
                      TextInputType.numberWithOptions(signed: false, decimal: false),
                      decoration:  InputDecoration(
                        counterText: '',
                        border: InputBorder.none,

                        hintText: '*',

                        hintStyle: TextStyle( color: Colors.grey, fontSize: 30,height: 2.0, fontFamily:'Mulish',fontWeight: FontWeight.bold),
                      ),
                    ),

                  ),


                  Container(

                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffFF4521),  width: 2, ),

                    ),
                    child:

                    const TextField(
                      maxLength: 1,

                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 30.0, height: 2.0, color: Colors.black),
                      keyboardType:
                      TextInputType.numberWithOptions(signed: false, decimal: false),
                      decoration:  InputDecoration(
                        counterText: '',
                        border: InputBorder.none,

                        hintText: '*',

                        hintStyle: TextStyle( color: Colors.grey, fontSize: 30,height: 2.0, fontFamily:'Mulish',fontWeight: FontWeight.bold),
                      ),
                    ),

                  ),


                  Container(

                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffFF4521),  width: 2, ),

                    ),
                    child:

                    const TextField(
                      maxLength: 1,

                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 30.0, height: 2.0, color: Colors.black),
                      keyboardType:
                      TextInputType.numberWithOptions(signed: false, decimal: false),
                      decoration:  InputDecoration(
                        counterText: '',
                        border: InputBorder.none,

                        hintText: '*',

                        hintStyle: TextStyle( color: Colors.grey, fontSize: 30,height: 2.0, fontFamily:'Mulish',fontWeight: FontWeight.bold),
                      ),
                    ),

                  ),





                ],

              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 8),
                  child: RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Resend Code", style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 16,
                          color:  Color(0xff030919),

                        ),

                        ),
                        TextSpan(
                          text: "+30", style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 16,
                          color:  Color(0xffFF6446),

                        ),


                        )

                      ]
                  )),
                ),
              ),

              const SizedBox(height: 320
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
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
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
                      )),
                ),
              ),

            ],



          ),
        ),
      ),

    );
  }
}
