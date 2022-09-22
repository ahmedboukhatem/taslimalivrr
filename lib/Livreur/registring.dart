
import 'package:flutter/material.dart';

class Registring extends StatefulWidget {

  const Registring({Key? key}) : super(key: key);

  @override
  State<Registring> createState() => _RegistringState();
}

class _RegistringState extends State<Registring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(


          child: Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                     InkWell(
                        onTap: () {
                         Scaffold.of(context).openDrawer();
                        },
                        child: const Icon(Icons.arrow_back_ios_sharp, size: 30)),
                      Text(
                        "Taslima",
                        style: TextStyle(
                          color: Color(0xffff4521),
                          fontSize: 24,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      // InkWell(
                      //     onTap: () {
                      //       Scaffold.of(context).openDrawer();
                      //     },
                      //     child: const Icon(Icons.notification_important_outlined, size: 30)),

                      Row(

                          mainAxisAlignment:MainAxisAlignment.end,
                          children:[
                            ClipRRect(

                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(

                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Image.asset( 'assets/food.jpg',fit: BoxFit.cover,),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down_sharp, size: 30),


                          ]

                      )
                      // Icon(Icons.menu, size: 30)
                      ,
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Text(
                  "Personal Information",
                  style: TextStyle(
                    color: Color(0xff030919),
                    fontSize: 18,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(
                  width: 304,
                  child: Text(
                    "Please provide us with your personal details to know you better",
                    style: TextStyle(
                      color: Color(0xff555b6a),
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "First name",
                  style: TextStyle(
                    color: Color(0xff030919),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(height: 48,
                child:  TextField(
                  decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffff4521), width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: Color(0xffffffff), width: 1.0),

                    ),

                    hintText:   "e.g, ahmed",

                    hintStyle: TextStyle(
                      color: Color(0xffc9ccd3),
                      fontSize: 12,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Last name",
                  style: TextStyle(
                    color: Color(0xff030919),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(height: 48,
                  child:  TextField(
                    decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffff4521), width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffffffff), width: 1.0),

                      ),

                      hintText:   "e.g, ahmed",

                      hintStyle: TextStyle(
                        color: Color(0xffc9ccd3),
                        fontSize: 12,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Date of birth",
                  style: TextStyle(
                    color: Color(0xff030919),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(height: 48,
                  child:  TextField(
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.calendar_today),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffff4521), width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffffffff), width: 1.0),

                      ),

                      hintText:   "e.g, ahmed",

                      hintStyle: TextStyle(
                        color: Color(0xffc9ccd3),
                        fontSize: 12,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Email Address",
                  style: TextStyle(
                    color: Color(0xff030919),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(height: 48,
                  child:  TextField(
                    decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffff4521), width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffffffff), width: 1.0),

                      ),

                      hintText:   "e.g, ahmed",

                      hintStyle: TextStyle(
                        color: Color(0xffc9ccd3),
                        fontSize: 12,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Mobile number",
                  style: TextStyle(
                    color: Color(0xff030919),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                SizedBox(height: 48,
                  child:  TextField(
                    decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffff4521), width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffffffff), width: 1.0),

                      ),

                      hintText:   "e.g, ahmed",

                      hintStyle: TextStyle(
                        color: Color(0xffc9ccd3),
                        fontSize: 12,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

















              SizedBox(height: 20,),
                Center(
                  child: Container(
                    width: 150,
                    height: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          width: 39,
                          height: 2,
                          color: Color(0xffffca28),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 39,
                          height: 2,
                          color: Color(0xffd9d9d9),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 39,
                          height: 2,
                          color: Color(0xffd9d9d9),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30,),
                InkWell(
                  onTap: (){},
                  child: Center(
                    child: Container(
                      width: 336,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffff4521),
                      ),

                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                )



              ],


            ),
          )
        ),
      ),


    );
  }
}
