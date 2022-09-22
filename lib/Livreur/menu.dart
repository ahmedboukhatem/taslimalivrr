

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 264,
      child: Container(
        width: 264,
        height: 840,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 10,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Stack(
          children:[


            Container(
              width: 264,
              height: 840,
              color: Color(0xfffa4a0c),

            ),
            Positioned(
                left: 225,
                top: 40,
                child : Container(child: Icon(Icons.cancel_outlined,size:30, color: Colors.white), )),
            Positioned(
              left: 178,
              top: 165,
              child: Container(
                width: 100,
                height: 500,
                   child:Image.asset(
                'assets/img.png',

              ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[

                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 60 , top:80),
                  child: Container(
                    width: 123,
                    height: 45,
                    child: Stack(
                      children:[Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 45,
                            height: 45,
                            child: Stack(
                              children:[Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0x4cd9d9d9),
                                ),
                              ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child:Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0x93d9d9d9),
                                        ),
                                        child: Icon(Icons.person,size:22,  color: Color(
                                            0xffff6933),)),
                                  ),
                                ),],
                            ),
                          ),
                        ),
                      ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Ahmed",
                              style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontSize: 18,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 64,
                          top: 26,
                          child: Text(
                            "View profile",
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 10,

                              fontFamily: "Mulish",
                            ),
                          ),
                        ),],
                    ),
                  ),
                ),//profile
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Icon(Icons.notification_important_outlined,size:25, color: Colors.white, ),
                          SizedBox(width: 30,),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 15,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.list_alt_outlined,size:25, color: Colors.white, ),
                          SizedBox(width: 30,),
                          Text(
                            "Orders done",
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 15,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:40),
                      Row(
                        children: [
                          Icon(Icons.settings_sharp,size:25, color: Colors.white, ),
                          SizedBox(width: 30,),
                          Text(
                            "Settings",
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 15,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(Icons.high_quality_outlined,size:25, color: Colors.white, ),
                          SizedBox(width: 30,),
                          Text(
                            "Support",
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 15,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(Icons.contact_support_outlined,size:25, color: Colors.white, ),
                          SizedBox(width: 30,),
                          Text(
                            "About",
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 15,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                ),
                // Center(
                //   child: OutlinedButton.icon(
                //     onPressed: () {},
                //
                //     label: const Text(
                //       'English', style: TextStyle(
                //         color: Color(0xfff7f7f7),
                //     fontSize: 12,
                //     fontFamily: "Mulish",
                //     fontWeight: FontWeight.bold,
                //   ),),
                //     icon: const Icon(Icons.arrow_drop_down ,color: Color(0xfff7f7f7),),
                //     style: OutlinedButton.styleFrom(
                //
                //
                //         side: BorderSide(width: 1, color: Color(0xffFFCA28),),
                //
                //         fixedSize: const Size(130, 26),
                //         padding: const EdgeInsets.all(10)),
                //
                //   ),
                // ),


                SizedBox(height: 80,),
                Center(
                  child: InkWell(
                    onTap: (){print('object');},
                    child: Container(
                      width: 130,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xffffca28), width: 1, ),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text(
                            "English",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                       Icon(Icons.arrow_drop_down, size: 20 ,color: Color(0xfff7f7f7),),

                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),

          ],
        ),
      ),

    );
  }
}
