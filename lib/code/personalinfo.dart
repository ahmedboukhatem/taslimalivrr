import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body:   SafeArea(
        child: Padding(

          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15 , bottom: 15),
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [

              Container(
                  alignment: Alignment.centerLeft,
                  child: const Icon(Icons.arrow_back, size: 35)),
              const SizedBox(height: 30,),
              Text(
                'Personal Information',
                style:GoogleFonts.mulish(
                  textStyle: const TextStyle(fontSize: 22,
                    fontFamily:'Mulish' ,
                    color:  Color(0xff070d26),
                    fontWeight: FontWeight.w300,
                    height: 2,

                  ),
                  fontWeight:FontWeight.bold ,
                ),


              ),
              const SizedBox(height: 5,),
              Text(
                'Please provide us with your personal details to know you better',
                style:GoogleFonts.mulish(
                  textStyle: const TextStyle(fontSize: 15,
                    fontFamily:'Mulish' ,
                    color:  Color(0xff555B6A),
                    fontWeight: FontWeight.bold,

                  ),
                  fontWeight:FontWeight.normal ,
                ),


              ),
             const  SizedBox(height: 30,),

              Text(
                'First name',
                style:GoogleFonts.mulish(
                  textStyle: const TextStyle(fontSize: 16,
                    fontFamily:'Mulish' ,
                    color:  Color(0xff030919),
                    fontWeight: FontWeight.bold,

                  ),


                ),


              ),
             const SizedBox(
                height: 5,
              ),
             const  SizedBox(
               height: 56,
                child:  TextField(
                  style: TextStyle(fontSize: 16.0, height: 2.0, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "e.g, John",

                    hintStyle: TextStyle(fontSize: 16.0, fontFamily:'Mulish' , height: 2.0, color: Colors.grey


                    ),
                    border: OutlineInputBorder(
                      borderSide:BorderSide(width: 1.5),
                    )

                  ),

                ),
              ),
              SizedBox(height: 40,),

              Text(
                'Last name',
                style:GoogleFonts.mulish(
                  textStyle: const TextStyle(fontSize: 16,
                    fontFamily:'Mulish' ,
                    color:  Color(0xff030919),
                    fontWeight: FontWeight.bold,

                  ),


                ),


              ),
              const SizedBox(
                height: 5,
              ),
              const  SizedBox(
                height: 56,
                child:  TextField(
                  style: TextStyle(fontSize: 16.0, height: 2.0, color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "e.g, deu",
                      hintStyle: TextStyle(fontSize: 16.0, height: 2.0, color: Colors.grey


                      ),
                      border: OutlineInputBorder(
                        borderSide:BorderSide(width: 1.5),
                      )

                  ),

                ),
              ),
              SizedBox(height: 40,),

              Text(
                'Email name',
                style:GoogleFonts.mulish(
                  textStyle: const TextStyle(fontSize: 16,
                    fontFamily:'Mulish' ,
                    color:  Color(0xff030919),
                    fontWeight: FontWeight.bold,

                  ),


                ),


              ),
              const SizedBox(
                height: 5,
              ),
              const  SizedBox(
                height: 56,
                child:  TextField(
                  style: TextStyle(fontSize: 16.0, height: 2.0, color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "e.g, johndoe@gmail.com",
                      hintStyle: TextStyle(fontSize: 16.0, height: 2.0, color: Colors.grey


                      ),
                      border: OutlineInputBorder(
                        borderSide:BorderSide(width: 1.5),
                      )

                  ),

                ),
              ),
              SizedBox(height: 60,),


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

          )
          ,

        ),

      ),



    );
  }
}
