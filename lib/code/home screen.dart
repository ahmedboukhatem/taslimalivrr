import 'package:flutter/material.dart';

import '../Models/recommandedItem.dart';
import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<RecommandedItem> itemList = <RecommandedItem>[
    RecommandedItem(
        name: "OIL",
        type: "test",
        description: "THIS IS A DESCRIOTUION AD AHDIAZD NJAd najizd nbaeuid",
        price: 250),
    RecommandedItem(
        name: "LMA",
        type: "test",
        description: "L7AMDAN ibn sanaan",
        price: 580),
    RecommandedItem(
        name: "LMA",
        type: "test",
        description: "L7AMDAN ibn sanaan",
        price: 580),
    RecommandedItem(
        name: "LMA",
        type: "test",
        description: "L7AMDAN ibn sanaan",
        price: 580),
  ];

  @override
  Widget build(BuildContext context) {

    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Menu(),

        body: Builder(
          builder:(context)=> SafeArea(

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
                            child: const Icon(Icons.notification_important_outlined, size: 30)),
                         Icon(Icons.menu, size: 30)
                      ,
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                const Text(
                  "Our Servises",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: "SF Pro Rounded",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: widthSize,
                  height: 215,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: 180,
                              height: 215,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 10,
                                    offset: Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.asset(
                                      'assets/food.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 180,
                                              height: 107,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0x00d9d9d9),
                                                    Color(0x4fd9d9d9),
                                                    Color(0xffd9d9d9)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 63,
                                          top: 138,
                                          child: Text(
                                            "Food",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Mulish",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 20,
                                          top: 170,
                                          child: Text(
                                            "Lorem ipsum dolor sit \namet, consecrated ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: 180,
                              height: 215,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 10,
                                    offset: Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.asset(
                                      'assets/epicery.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 180,
                                              height: 107,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0x00d9d9d9),
                                                    Color(0x4fd9d9d9),
                                                    Color(0xffd9d9d9)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                         Positioned(
                                          left: widthSize*0.15,
                                          top: 138,
                                          child: Text(
                                            "Epicery",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Mulish",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 20,
                                          top: 170,
                                          child: Text(
                                            "Lorem ipsum dolor sit \namet, consecrated ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            print(widthSize);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: 180,
                              height: 215,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 10,
                                    offset: Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.asset(
                                      'assets/other.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 180,
                                              height: 107,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0x00d9d9d9),
                                                    Color(0x4fd9d9d9),
                                                    Color(0xffd9d9d9)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 63,
                                          top: 138,
                                          child: Text(
                                            "Other",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Mulish",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 20,
                                          top: 170,
                                          child: Text(
                                            "Lorem ipsum dolor sit \namet, consecrated ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Popular now",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontFamily: "SF Pro Rounded",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: heightSize*0.35,
                  width: widthSize,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: widthSize,
                          height: 148,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: widthSize - 30,
                                height: 148,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color(0xffe7e7e7),
                                    width: 1,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 40,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: widthSize*0.22,
                                      top: 34,
                                      child: SizedBox(
                                        width: 119.66,
                                        child: Text(
                                          itemList[index].name.toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontFamily: "SF Pro Display",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: widthSize*0.30,
                                      top: 99,
                                      child: SizedBox(
                                        width: 70.91,
                                        child: Text(
                                          itemList[index].price.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xfffa4a0c),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: widthSize*0.08,
                                      top: widthSize*0.08,
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffff4521),
                                            width: 1,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          child: SizedBox(
                                            height: 60,
                                            width: 60,
                                            child: Image.asset(
                                              'assets/elio.jpg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: widthSize*0.345,
                                      top: 65,
                                      child: SizedBox(
                                        width: 200,
                                        height: 24,
                                        child: Text(
                                          "${itemList[index].price} DA",
                                          style: TextStyle(
                                            color: Color(0xff4b545a),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap:(){
                                        print(widthSize);
                                      },
                                      child: Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            width: 110,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(0),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(5),
                                              ),
                                              color: Color(0xffffca28),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                     Positioned(
                                      left: widthSize*0.69,
                                      top: 120,
                                      child: Icon(
                                        Icons.shopping_cart,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                     Positioned(
                                      left: widthSize*0.75,
                                      top: 120,
                                      child: Text(
                                        "order",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: itemList.length),
                ),
              ],
            ),
          ),
      ),
    ),
        ));
  }
}
