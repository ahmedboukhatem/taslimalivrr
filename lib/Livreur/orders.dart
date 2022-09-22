import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taslimaapp/Livreur/menu.dart';
import 'package:taslimaapp/Models/Todelivery.dart';


class OrdersItems extends StatefulWidget {
  const OrdersItems({Key? key}) : super(key: key);

  @override
  State<OrdersItems> createState() => _OrdersItemsState();
}

class _OrdersItemsState extends State<OrdersItems> {

  List<ToDeliver> ToDeliverList =  <ToDeliver>[
    ToDeliver(Start: "lbahi", End: "chambre-c68", Totale: 3000, PriceDelivey: 200, Express: false),

   ToDeliver(Start: "resturent-lbahi", End: "chambre-c68", Totale: 3000, PriceDelivey: 200, Express: false),

  ];
  @override
  /// todo when new element arrive from database you perform this check to set the element if it express to the top of the list
  void initState() {

    super.initState();

    var element = ToDeliver(Start: "eat food", End: "khadra mostaganem", Totale: 1200, PriceDelivey: 300, Express: true);
   if(element.Express)
   {
    ToDeliverList.insert(0, element);
   }

  }

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(

      drawer: Menu(),
      body: Builder(
          builder:(context)=> SafeArea(

          child: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: SizedBox(

        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
        Padding(
        padding: const EdgeInsets.only(top: 15.0,right: 5,left: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(Icons.menu, size: 30)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(height: 8,),
                  Text(
                    "2500DZ",
                    style: TextStyle(
                      color: Color(0xff33c157),
                      fontSize: 20,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w300,
                    ),
                  )



                ],
              ),
              Icon(Icons.notification_important_outlined, size: 30)
              ,
            ],
        ),

      ),



                SizedBox(height: 32,),

                Text(
                  "Orders :",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.50,
                  ),
                ),
                SizedBox(height: 16,),
                SizedBox(

                  width: widthSize * 0.97,
                  height: 530,
                  child: ListView.separated(
                    // shrinkWrap: true,


                    separatorBuilder: (context, index) {

                      return Center(
                        child: SizedBox(
                          height: 8,
                        ),
                      );
                    },
                    itemBuilder: (context, index) {
                      return Center(
                        child: Container(
                          width: widthSize * 0.97,
                          height: 200,

                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10),


                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 15,
                                offset: Offset(0, 6),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 16,),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                  color: Color(0xffc4c4c4),
                                                ),
                                                width: 72,
                                                height: 72,
                                                child: Image.asset(
                                                  'assets/food.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on_rounded,
                                          size: 17, color: Color(0xffff4521)),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        width: 0.7,
                                        color: Color(0xFFCCCCCC),
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Icon(
                                        Icons.my_location,
                                        size: 17,
                                        color: Color(0xffffbb00),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ToDeliverList[index].Start,
                                        style: TextStyle(
                                          color: Color(0xff555b6a),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 0.7,
                                        width: 190,
                                        color: Color(0xFFCCCCCC),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                          ToDeliverList[index].End,
                                        style: TextStyle(
                                          color: Color(0xff4b545a),
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 72),
                                        child: SizedBox(
                                            height:0,
                                            child:  ToDeliverList[index].Express ?  Icon(Icons.star, color: Color(
                                                0xffffbb00),):Container()),
                                      ),


                                    ],
                                  ),

                                ],
                              ),
                              SizedBox(height: 24,),
                              Padding(
                                padding: const EdgeInsets.only(left: 40,right: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Row(
                                      children:  [
                                        Text(
                                          "${ToDeliverList[index].Totale} DA",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8,),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0,right: 40),
                                child: Container(
                                  height: 1,
                                  color: Color(0x26000000),


                                ),
                              ),
                              SizedBox(height: 8,),
                              Padding(
                                padding: const EdgeInsets.only(left: 40,right: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Totale",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Row(
                                      children:  [
                                        Text(
                                          "${ToDeliverList[index].PriceDelivey} DA",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontFamily: "Mulish",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: ToDeliverList.length,
                  ),
                ),
                // Center(
                //   child: Container(
                //     width: widthSize * 0.97,
                //     height: 200,
                //
                //     decoration: BoxDecoration(
                //
                //       borderRadius: BorderRadius.circular(10),
                //
                //
                //       boxShadow: const [
                //         BoxShadow(
                //           color: Color(0x26000000),
                //           blurRadius: 15,
                //           offset: Offset(0, 6),
                //         ),
                //       ],
                //       color: Colors.white,
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         SizedBox(height: 16,),
                //         Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             SizedBox(
                //               width: 20,
                //             ),
                //             Container(
                //               width: 70,
                //               height: 70,
                //               child: Stack(
                //                 children: [
                //                   Positioned.fill(
                //                     child: Align(
                //                       alignment: Alignment.bottomRight,
                //                       child: ClipRRect(
                //                         borderRadius: BorderRadius.circular(10.0),
                //                         child: Container(
                //                           decoration: BoxDecoration(
                //                             borderRadius: BorderRadius.circular(15),
                //                             color: Color(0xffc4c4c4),
                //                           ),
                //                           width: 72,
                //                           height: 72,
                //                           child: Image.asset(
                //                             'assets/food.jpg',
                //                             fit: BoxFit.cover,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             SizedBox(
                //               width: 15,
                //             ),
                //             Column(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Icon(Icons.location_on_rounded,
                //                     size: 17, color: Color(0xffff4521)),
                //                 SizedBox(
                //                   height: 3,
                //                 ),
                //                 Container(
                //                   width: 0.7,
                //                   color: Color(0xFFCCCCCC),
                //                   height: 20,
                //                 ),
                //                 SizedBox(
                //                   height: 3,
                //                 ),
                //                 Icon(
                //                   Icons.my_location,
                //                   size: 17,
                //                   color: Color(0xffffbb00),
                //                 ),
                //               ],
                //             ),
                //             SizedBox(
                //               width: 10,
                //             ),
                //             Column(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.end,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Eat Food ",
                //                   style: TextStyle(
                //                     color: Color(0xff555b6a),
                //                     fontSize: 14,
                //                     fontFamily: "Mulish",
                //                     fontWeight: FontWeight.w300,
                //                   ),
                //                 ),
                //                 SizedBox(
                //                   height: 10,
                //                 ),
                //                 Container(
                //                   height: 0.7,
                //                   width: 190,
                //                   color: Color(0xFFCCCCCC),
                //                 ),
                //                 SizedBox(
                //                   height: 10,
                //                 ),
                //                 Text(
                //                   "Zighoud youcef 1000",
                //                   style: TextStyle(
                //                     color: Color(0xff4b545a),
                //                     fontSize: 14,
                //                     fontFamily: "Mulish",
                //                     fontWeight: FontWeight.w300,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //
                //             Column(
                //               children: [
                //                 Padding(
                //                   padding: const EdgeInsets.only(bottom: 72),
                //                   child: SizedBox(
                //                       height:0,
                //                       child: Icon(Icons.star, color: Color(
                //                           0xffffbb00),)),
                //                 ),
                //
                //
                //               ],
                //             ),
                //
                //           ],
                //         ),
                //         SizedBox(height: 24,),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 40,right: 40),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Text(
                //                 "Delivery",
                //                 style: TextStyle(
                //                   color: Colors.black,
                //                   fontSize: 18,
                //                 ),
                //               ),
                //               Row(
                //                 children: const [
                //                   Text(
                //                     "300",
                //                     textAlign: TextAlign.right,
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 19,
                //                       fontFamily: "Mulish",
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                   SizedBox(
                //                     width: 5,
                //                   ),
                //                   Text(
                //                     "DZ",
                //                     style: TextStyle(
                //                       color: Color(0xff9796a1),
                //                       fontSize: 14,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //         SizedBox(height: 8,),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 40.0,right: 40),
                //           child: Container(
                //             height: 1,
                //             color: Color(0x26000000),
                //
                //
                //           ),
                //         ),
                //         SizedBox(height: 8,),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 40,right: 40),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Text(
                //                 "Totale",
                //                 style: TextStyle(
                //                   color: Colors.black,
                //                   fontSize: 18,
                //                 ),
                //               ),
                //               Row(
                //                 children: const [
                //                   Text(
                //                     "2150",
                //                     textAlign: TextAlign.right,
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 19,
                //                       fontFamily: "Mulish",
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                   SizedBox(
                //                     width: 5,
                //                   ),
                //                   Text(
                //                     "DZ",
                //                     style: TextStyle(
                //                       color: Color(0xff9796a1),
                //                       fontSize: 14,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(height: 16,),

                
                





              ] ),),),
          ),)

    ),);
  }
}
