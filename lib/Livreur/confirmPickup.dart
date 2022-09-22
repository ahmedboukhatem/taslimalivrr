import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../Models/listofUserOrdersForLivrrApp.dart';
import '../code/menu.dart';

class ConfirmPickup extends StatefulWidget {
  const ConfirmPickup({Key? key}) : super(key: key);

  @override
  State<ConfirmPickup> createState() => _ConfirmPickupState();
}

class _ConfirmPickupState extends State<ConfirmPickup> {
  List<ListOffOrders> Orders = <ListOffOrders>[
    ListOffOrders(name: "ObjetOne", Price: 1200, nb: 01),
    ListOffOrders(name: "ObjetTow", Price: 1400, nb: 02),
    ListOffOrders(name: "Objetthree", Price: 1200, nb: 01),
  ];
 String condition = "notPicked";

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Menu(),
      body: StatefulBuilder(
          builder: (context, setState) => SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.92,
                    width: MediaQuery.of(context).size.width,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                    onTap: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    child: const Icon(Icons.menu,
                                        color: Colors.red, size: 30)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.87,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.35,
                                    child: Center(
                                      child: Text(""
                                          "map here"),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: widthSize,
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 50,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0,
                                          left: 20,
                                          right: 20,
                                          bottom: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Pickup Address",
                                                style: TextStyle(
                                                  color: Color(0xff555b6a),
                                                  fontSize: 12,
                                                  fontFamily: "Mulish",
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Container(
                                                width: 60,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Color(0x26ff6600),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "3.2km",
                                                    style: TextStyle(
                                                      color: Color(0xffff4521),
                                                      fontSize: 10,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.location_on_rounded,
                                                  color: Color(0xffffca28),
                                                  size: 20,
                                                ),
                                                Text(
                                                  "Maxi Food",
                                                  style: TextStyle(
                                                    color: Color(0xff030919),
                                                    fontSize: 14,
                                                    fontFamily: "Mulish",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            child: Text(
                                              "Delivery Address",
                                              style: TextStyle(
                                                color: Color(0xff555b6a),
                                                fontSize: 12,
                                                fontFamily: "Mulish",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 195,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.location_on_rounded,
                                                  color: Color(0xff33c157),
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 163,
                                                  child: Text(
                                                    "1000 Zighoud youcef",
                                                    style: TextStyle(
                                                      color: Color(0xff030919),
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          // SizedBox(
                                          //   width: 82,
                                          //   child: Text(
                                          //     "orders Liste",
                                          //     style: TextStyle(
                                          //       color: Color(0xff555b6a),
                                          //       fontSize: 12,
                                          //     ),
                                          //   ),
                                          // ),
                                          ExpandablePanel(
                                            header: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 16.0),
                                              child: Text(
                                                "Orders Liste",
                                                style: TextStyle(
                                                    color: Color(0xff555b6a),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            // collapsed: Text(article.body, softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
                                            expanded: SizedBox(
                                              height: heightSize * 0.1,
                                              width: widthSize,
                                              child: ListView.separated(
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Center(
                                                    child: SizedBox(
                                                      height: 8,
                                                    ),
                                                  );
                                                },
                                                itemBuilder: (context, index) {
                                                  return Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: 100,
                                                        child: Text(
                                                          Orders[index].name,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff030919),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                "Mulish",
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "0${Orders[index].nb}",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xffff4521),
                                                          fontSize: 12,
                                                          fontFamily: "Mulish",
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "${Orders[index].Price} DA",
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  "Mulish",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  );
                                                },
                                                itemCount: Orders.length,
                                              ),
                                            ),
                                            collapsed: Container(),
                                          ),
                                          // SizedBox(height: 10,),
                                          // Container(
                                          //   width: 332,
                                          //   height: 2,
                                          //   color: Color(0xffebebeb),
                                          // ),
                                          // SizedBox(
                                          //   height: 8,
                                          // ),

                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 332,
                                            height: 2,
                                            color: Color(0xffebebeb),
                                          ),

                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 100,
                                                child: Text(
                                                  "Delivery",
                                                  style: TextStyle(
                                                    color: Color(0xff030919),
                                                    fontSize: 12,
                                                    fontFamily: "Mulish",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "200 DA",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: "Mulish",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 100,
                                                child: Text(
                                                  "Totale",
                                                  style: TextStyle(
                                                    color: Color(0xff030919),
                                                    fontSize: 12,
                                                    fontFamily: "Mulish",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "3000 DA",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: "Mulish",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),
                                          // Row(
                                          //   crossAxisAlignment: CrossAxisAlignment.start,
                                          //
                                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          //   children: [
                                          //     InkWell(
                                          //
                                          //       child: Container(
                                          //         width: 158,
                                          //         height: 40,
                                          //         decoration: BoxDecoration(
                                          //           borderRadius: BorderRadius.circular(5),
                                          //           color: Color(0xffe5e5e5),
                                          //         ),
                                          //         child: Center(
                                          //           child: Text(
                                          //             "Back",
                                          //             style: TextStyle(
                                          //               color: Color(0xff555b6a),
                                          //               fontSize: 14,
                                          //               fontFamily: "Mulish",
                                          //               fontWeight: FontWeight.w700,
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     InkWell(
                                          //
                                          //       child: Container(
                                          //         width: 158,
                                          //         height: 40,
                                          //         decoration: BoxDecoration(
                                          //           borderRadius: BorderRadius.circular(5),
                                          //           color: Color(0xffff4521),
                                          //         ),
                                          //         child: Center(
                                          //
                                          //           child: Text(
                                          //             "Confirm",
                                          //             style: TextStyle(
                                          //               color: Color(0xffffffff),
                                          //               fontSize: 14,
                                          //               fontFamily: "Mulish",
                                          //               fontWeight: FontWeight.w700,
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //
                                          //   ],
                                          //
                                          // )

                                          ( condition=="notPicked") ? Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffb4b4b4),
                                              ),
                                              onPressed: () async {
                                                ///TO DO change true with the condition when the delivery pick the order

                                                    setState(() {
                                                      condition = "picked";
                                                    });

                                                }
                                              ,
                                              child: Container(
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    (condition=="coming"||condition=="arrived")
                                                        ? "Done"
                                                        : "i Picked the Orders ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                      FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )  :  ( condition=="picked") ?
                                          Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary:  Color(0xffff4521),
                                              ),
                                              onPressed: () async {
                                                ///TO DOwe need to verify a variable to give access to this conditions
                                                setState(() {
                                                  condition = "coming";
                                                });
                                              },
                                              child: Container(
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    (condition=="coming"||condition=="arrived")
                                                        ? "Done"
                                                        : "i Picked the Orders ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                      FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ) :  ( condition=="coming") ?
                                          Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffb4b4b4)
                                              ),
                                              onPressed: () async {
                                                ///TO DO change true with the condition when the delivery pick the order
                                                setState(() {
                                                  condition = "arrived";
                                                });
                                              },
                                              child: Container(
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    (condition=="coming"||condition=="arrived")
                                                        ? "Done"
                                                        : "i Picked the Orders ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                      FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )  :  ( condition=="arrived")?  Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffff4521),
                                              ),
                                              onPressed: () async {

                                                setState(() {
                                                  condition = "arrviedd";
                                                });
                                              },
                                              child: Container(
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    (condition=="coming"||condition=="arrived")
                                                        ? "Done"
                                                        : "i Picked the Orders ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ):Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffb4b4b4),
                                              ),
                                              onPressed: () async {
                                                ///TO DO change true with the condition when the delivery pick the order
                                                setState(() {
                                                  condition = "arrviedd";
                                                });
                                              },
                                              child: Container(
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    (condition=="coming"||condition=="arrived")
                                                        ? "Done"
                                                        : "i Picked the Orders ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight:
                                                      FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              )),
    );
  }
}
