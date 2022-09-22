import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taslimaapp/Livreur/menu.dart';
import 'package:taslimaapp/Models/Todelivery.dart';

class OrdersDone extends StatefulWidget {
  const OrdersDone({Key? key}) : super(key: key);

  @override
  State<OrdersDone> createState() => _OrdersDoneState();
}

class _OrdersDoneState extends State<OrdersDone> {
  List<ToDeliver>ToDeliverList= <ToDeliver>[
    ToDeliver(Start: "lbahi", End: "chambre-c68", Totale: 3000, PriceDelivey: 200, Express: false),
    ToDeliver(Start: "eat food", End: "khadra mostaganem", Totale: 1200, PriceDelivey: 300, Express: true),
    ToDeliver(Start: "resturent-lbahi", End: "chambre-c68", Totale: 3000, PriceDelivey: 200, Express: false),

  ];
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(

        drawer: Menu(),
    body: Builder( builder:(context)=> SafeArea(

    child: Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(),
              ],
            ),

          ),
          SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Orders Done :",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.50,
                ),
              ),
              Text(
                "12 order",
                style: TextStyle(
                  color: Color(0xdb797970),
                  fontSize: 18,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w200,
                  letterSpacing: 0.50,
                ),
              ),
            ],
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
                    height: 100,

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
                                )
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
                                      child:  ToDeliverList[index].Express ?   Icon(Icons.star, color: Color(
                                          0xffffbb00),): Container()),
                                ),


                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                );
              },
              itemCount: ToDeliverList.length,
            ),
          ),

        ],

      ),
    ),

    )));
  }
}
