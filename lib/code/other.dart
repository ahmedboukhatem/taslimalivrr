
import 'package:flutter/material.dart';

import 'menu.dart';

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  State<Other> createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {

    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:  Color(0xffffffff),
      drawer: Menu(),

      body:Builder(
        builder: (context) {
      return SafeArea(

          child: Padding( padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),

          child:Stack(

            children: [

              SizedBox(
                height: heightSize,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Icon(Icons.menu, size: 30)),
                          SizedBox(width: 10,),
                          Stack(
                            children: const [
                              Icon(
                                Icons.shopping_basket_outlined,
                                size: 30,
                              ),
                              Positioned(
                                left: 12,
                                child: Icon(
                                  Icons.fiber_manual_record_rounded,
                                  size: 18,
                                  color: Color(0xFFFF0000),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Text(
                        "Special delivery",
                        style: TextStyle(
                          color: Color(0xff030919),
                          fontSize: 20,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 340,
                        child: Text(
                          "in this service you need to add some informations \nto make the proccess easy for you  ",
                          style: TextStyle(
                            color: Color(0xff7e7e7e),
                            fontSize: 14,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w500,
                          ),


                        ),



                      ),

                      SizedBox(height: 15,),
                      Center(
                        child: Container(
                          width: 360,
                          height: heightSize*0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Color(0xffe0e0e0), width: 1, ),
                            color: Colors.white,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "information",
                                  style: TextStyle(
                                    color: Color(0xff030919),
                                    fontSize: 16,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "ID number",
                                  style: TextStyle(
                                    color: Color(0xff555b6a),
                                    fontSize: 13,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 320,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xffd9d9d9), width: 1, ),
                                    color: Color(0xb2f0f2f6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:12 ,left: 20 , right: 20),
                                    child: TextField(
                                      decoration:  InputDecoration.collapsed(
                                        hintText:   "e,g, 213663238037",
                                        hintStyle: TextStyle(
                                          color: Color(0xffc9ccd3),
                                          fontSize: 12,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 10,),
                                Text(
                                  "reciver phone number",
                                  style: TextStyle(
                                    color: Color(0xff555b6a),
                                    fontSize: 13,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 320,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xffd9d9d9), width: 1, ),
                                    color: Color(0xb2f0f2f6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20 , right: 20, top: 12),
                                    child: TextField(
                                      decoration:  InputDecoration.collapsed(
                                        hintText:   "e,g, 213663238037",
                                        hintStyle: TextStyle(
                                          color: Color(0xffc9ccd3),
                                          fontSize: 12,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                                SizedBox(height: 20,),
                                Align(
                                  alignment: Alignment.centerRight,

                                  child: Container(
                                    width: 147,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Color(0xffff4521), width: 1, ),


                                    ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [

                                        Icon(Icons.add_box_outlined, size: 15 ,  color: Color(
                                            0xff030919),),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "your id Picture",
                                          style: TextStyle(
                                            color: Color(0xff555b6a),
                                            fontSize: 12,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.w600,
                                          ),
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
                      SizedBox(height: 30,),
                      Center(
                        child: Container(
                          width: 360,
                          height: heightSize*0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Color(0xffe0e0e0), width: 1, ),
                            color: Colors.white,
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "information",
                                  style: TextStyle(
                                    color: Color(0xff030919),
                                    fontSize: 16,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "ID number",
                                  style: TextStyle(
                                    color: Color(0xff555b6a),
                                    fontSize: 13,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 320,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xffd9d9d9), width: 1, ),
                                    color: Color(0xb2f0f2f6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:12 ,left: 20 , right: 20),
                                    child: TextField(
                                      decoration:  InputDecoration.collapsed(
                                        hintText:   "e,g, 213663238037",
                                        hintStyle: TextStyle(
                                          color: Color(0xffc9ccd3),
                                          fontSize: 12,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 10,),
                                Text(
                                  "reciver phone number",
                                  style: TextStyle(
                                    color: Color(0xff555b6a),
                                    fontSize: 13,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: 320,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xffd9d9d9), width: 1, ),
                                    color: Color(0xb2f0f2f6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20 , right: 20, top: 12),
                                    child: TextField(
                                      decoration:  InputDecoration.collapsed(
                                        hintText:   "e,g, 213663238037",
                                        hintStyle: TextStyle(
                                          color: Color(0xffc9ccd3),
                                          fontSize: 12,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),

                                ),








                              ],


                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 120,),








                    ],



                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Center(
                  child: Container(

                    width: widthSize-40,
                    height: 80,
                    color: Colors.white,

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: 336,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffff4521),
                          ),

                          child: Center(
                            child: Text(
                              "Confirm",
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
                    ),
                  ),
                ),
              )

            ],

          ),





















          ),







          );




        }



      )


    );
  }
}
