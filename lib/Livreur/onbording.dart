import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(

         child: Padding(
           padding: const EdgeInsets.only(right: 20,left: 20),
           child: Column(

             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [

               Padding(
                 padding: const EdgeInsets.only(top: 15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:  [
                     SizedBox(width: 60,),
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
              Image.asset( 'assets/logo-01.png',fit: BoxFit.cover,),
               Center(
                 child: Text(
                   "Earn Quick Money",
                   style: TextStyle(
                     color: Color(0xff123040),
                     fontSize: 24,
                     fontFamily: "Mulish",
                     fontWeight: FontWeight.w800,
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               Center(
                 child: SizedBox(
                   width: 320,
                   child: Text(
                     " Earn money with us regularly as you take your time to deliver our products. ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xff555b6a),
                       fontSize: 14,
                       fontFamily: "Mulish",
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 140,),
               Row(

                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:[
                   InkWell(
                     onTap: (){},
                     child: Container(
                       width: 154,
                       height: 45,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(color: Color(0xffff4521), width: 1, ),
                       ),
                       padding: const EdgeInsets.only(top: 14, bottom: 13, ),
                       child: Center(
                         child: Text(
                           "Register",
                           style: TextStyle(
                             color: Color(0xff555b6a),
                             fontSize: 14,
                             fontFamily: "Mulish",
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   ),
                   InkWell(

                     onTap: (){},
                     child: Container(
                       width: 154,
                       height: 45,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Color(0xffff4521),
                       ),

                       child: Center(
                         child: Text(
                           "Login",
                           style: TextStyle(
                             color: Color(0xfff7f7f7),
                             fontSize: 14,
                             fontFamily: "Mulish",
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
               )


             ],

           ),
         ),

       ),


    );
  }
}
