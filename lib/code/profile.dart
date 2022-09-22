
import 'package:flutter/material.dart';

import 'menu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),

      body : Builder(

      builder: (context) => SingleChildScrollView(
        child: SafeArea(

          child:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Icon(Icons.menu, size: 30)),
                    Text(
                      'Profil',
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
              ),

              SizedBox(height: 80,),
              Center(
                child: Stack(
                  children:[

                    ClipRRect(

                      borderRadius: BorderRadius.circular(45),
                      child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color(0xffc4c4c4),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19ffb72b),
                            blurRadius: 40,
                            offset: Offset(0, 20),
                          ),
                        ],

                      ),

                        child: Image.asset(
                          'assets/Profile.png',
                          fit: BoxFit.cover,
                        ),
                  ),
                    ),
                    Positioned(
                      top : 60,
                      left: 60,
                      child: InkWell(

                        onTap: (){},

                        child: Container(
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x66c4c4c4),
                                blurRadius: 15,
                                offset: Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),

                          child: Icon(Icons.camera_alt_rounded , size: 20,),
                        ),
                      ),
                    )

                    ],
                ),
              ),
              SizedBox(height: 15,),

              Center(
                child: Text(
                  "Ahmed Boukhatem",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  "Edit Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff9796a1),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full name",
                      style: TextStyle(
                        color: Color(0xff9796a1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                     focusedBorder:OutlineInputBorder(

                       borderSide: const BorderSide(color: Color(0xffff4521), width: 1.0),
                     ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius: BorderRadius.circular(4.0),

                          ),
                          hintText: 'Ahmed boukhatem',
                          hintStyle: TextStyle(  color: Color(0xff111719),
                            fontFamily: "Mulish",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xff9796a1),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder:OutlineInputBorder(

                            borderSide: const BorderSide(color: Color(0xffff4521), width: 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius: BorderRadius.circular(4.0),

                          ),
                          hintText: 'a.boukhatem@gmail.com',
                          hintStyle: TextStyle(  color: Color(0xff111719),
                            fontFamily: "Mulish",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,),
                        ),
                      ),




                    ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Color(0xff9796a1),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder:OutlineInputBorder(

                        borderSide: const BorderSide(color: Color(0xffff4521), width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0),

                      ),
                      hintText: '+213663238037',
                      hintStyle: TextStyle(  color: Color(0xff111719),
                        fontFamily: "Mulish",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,),
                    ),
                  ),)
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: InkWell(

                  onTap: (){},
                  child: Container(
                    width: 274,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffffca28),
                    ),
                    padding: const EdgeInsets.only(left: 115, right: 90, top: 11, bottom: 16, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        SizedBox(
                          width: 69,
                          height: 18,
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )




            ],



          ),

        ),
      )

      ),


    );
  }
}
