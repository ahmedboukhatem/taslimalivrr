
import 'package:flutter/material.dart';

import 'menu.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    return Scaffold(

      drawer: Menu(),
      body: Builder(

      builder: (context) => SingleChildScrollView(

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Icon(Icons.menu, size: 30)),
                    Text(
                      'Notifications',
                      style: (TextStyle(
                        fontSize: 18,
                        fontFamily: 'Mulish',
                        color: Color(0xff030303),
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    Stack(children: const [

                      Icon(Icons.notification_important_outlined, size: 30 ,  ),
                      Positioned(
                        left: 12,
                        child: Icon(Icons.fiber_manual_record_rounded, size: 18,color: Color(
                            0xFFFF0000), ),
                      )

                    ], ),
                  ],
                ),
                SizedBox(
                  height: 40,),
                Container(
                  width: widthSize*0.89,
                  height: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 10 , right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffffca28),

                                ),

                                child: Icon(Icons.notification_important, size: 20,color: Colors.white,),
                              ),
                              SizedBox(width: 30,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Allo Jibli",
                                    style: TextStyle(
                                      color: Color(0xff3e4958),
                                      fontSize: 14,
                                    ),
                                  ),

                                  Text(
                                    "Just Now",
                                    style: TextStyle(
                                      color: Color(0xff979797),
                                      fontSize: 12,
                                      fontFamily: "Mulish",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )


                                ],

                              ),

                            ],

                          ),


                            Text(
                              "Supprime",
                              style: TextStyle(
                                color: Color(0xffff4521),
                                fontSize: 12,
                              ),
                            )
                        ],),
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: SizedBox(
                          width: widthSize*0.7,
                          height: 45,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices ut orci non porta aliquam ",
                            style: TextStyle(
                              color: Color(0xff979797),
                              fontSize: 12,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          width: 337,
                          height: 1.5,
                          color: Color(0xff360377
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


      ),

    );
  }
}
