import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Models/category.dart';
import '../Models/listresturant.dart';
import 'menu.dart';

class MenuResturet extends StatefulWidget {
  const MenuResturet({Key? key}) : super(key: key);

  @override
  State<MenuResturet> createState() => _MenuResturetState();
}

class _MenuResturetState extends State<MenuResturet> {

  List<Category> listCategory = <Category>[
    Category(
      name: "7mida",
      type: "Nigga",
      isSelected: true,
      color: Color(0xffffffff),
      textColor: Color(0xff67666d),
    ),


    Category(
      name: "loubia",
      type: "Rahmoun",
      isSelected: false,
      color: Color(0xffffffff),
      textColor: Color(0xff67666d),
    ),
    Category(
      name: "loubia",
      type: "Rahmoun",
      isSelected: false,
      color: Color(0xffffffff),
      textColor: Color(0xff67666d),
    ),
    Category(
      name: "Lbahi",
      type: "Ben senan",
      isSelected: false,
      color: Color(0xffffffff),
      textColor: Color(0xff67666d),
    ),
    Category(
      name: "7amban",
      type: "aWadi lAa",
      isSelected: false,
      color: Color(0xffffffff),
      textColor: Color(0xff67666d),
    ),
  ];
  List<ResturentList> itemsResturent = <ResturentList>[
    ResturentList(
        name: "3dess bal7am",
        type: "test",
        description:
            "THIS IS A DESCRIOTUION AD AHDIAZD NJAd najizd nbaeuid asahbi malak batachri chri machi batachri chri ",
        price: 1000),
    ResturentList(
        name: "plat arabic",
        type: "test",
        description:
            "THIS IS A DESCRIOTUION AD AHDIAZD NJAd najizd nbaeuid awedi kol wnoud 3laya chri wala rou7",
        price: 1500),
  ];

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Menu(),

      resizeToAvoidBottomInset: false,
      body: Builder(
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
              child: Column(
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
                        'Snap Food',
                        style: (TextStyle(
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          color: Color(0xff030303),
                          fontWeight: FontWeight.bold,
                        )),
                      ),
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
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 50,
                    width: widthSize * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffb7b6b6),
                        ),
                        filled: true,
                        fillColor: Color(0xfff3f3f3),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color(0xffffffff), width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color(0xffffffff), width: 1.0),
                          //
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffdedede), width: 1.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color(0xffffffff), width: 1.0),

                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Mulish',
                          color: Color(0xffAFADAD),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: widthSize*0.9,
                    child: Padding(
                      padding:  EdgeInsets.only(left: widthSize*0.025),
                      child: ListView.separated(
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return Center(
                            child: SizedBox(
                              width: 15,
                            ),
                          );
                        },
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              listCategory.forEach((element) { if(element.name == listCategory[index].name){}else{
                                element.isSelected=false;
                              } });
                              setState(() {
                                listCategory[index].isSelected =
                                    !listCategory[index].isSelected;
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 10,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: listCategory[index].isSelected
                                        ? Colors.red
                                        : listCategory[index].color,
                                  ),
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    bottom: 16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  'assets/food.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xffc4c4c4),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8.12),
                                      SizedBox(
                                        width: 30.57,
                                        height: 9.61,
                                        child: Text(
                                          listCategory[index].name,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:    listCategory[index].isSelected
                                          ? Colors.white
                                            : listCategory[index].textColor,
                                            fontSize: 10,
                                            fontFamily: "SF Pro Display",
                                            fontWeight: FontWeight.w500,
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
                        itemCount: listCategory.length,
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     InkWell(
                  //       onTap: () {
                  //         setState(() {
                  //           if (_color5 == Color(0xffff4521)) {}
                  //           ;
                  //           _color5 = Color(0xffff4521);
                  //           _color1 = Color(0xffffffff);
                  //           _color3 = Color(0xffffffff);
                  //           _color4 = Color(0xffffffff);
                  //           _color2 = Color(0xffffffff);
                  //         });
                  //       },
                  //       child: Container(
                  //         width: 50,
                  //         height: 80,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(50),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x19000000),
                  //               blurRadius: 10,
                  //               offset: Offset(0, 4),
                  //             ),
                  //           ],
                  //           color: _color5,
                  //         ),
                  //         padding: const EdgeInsets.only(
                  //           top: 3,
                  //           bottom: 16,
                  //         ),
                  //         child: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           mainAxisAlignment: MainAxisAlignment.end,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(50),
                  //               child: Container(
                  //                 width: 40,
                  //                 height: 40,
                  //                 child: Stack(
                  //                   children: [
                  //                     Container(
                  //                       child: Image.asset(
                  //                         'assets/food.jpg',
                  //                         fit: BoxFit.cover,
                  //                       ),
                  //                       width: 40,
                  //                       height: 40,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xffc4c4c4),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8.12),
                  //             SizedBox(
                  //               width: 30.57,
                  //               height: 9.61,
                  //               child: Text(
                  //                 "Burger",
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   color: Color(0xff67666D),
                  //                   fontSize: 10,
                  //                   fontFamily: "SF Pro Display",
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {
                  //         setState(() {
                  //           _color1 = Color(0xffff4521);
                  //           _color2 = Color(0xffffffff);
                  //           _color3 = Color(0xffffffff);
                  //           _color4 = Color(0xffffffff);
                  //           _color5 = Color(0xffffffff);
                  //         });
                  //       },
                  //       child: Container(
                  //         width: 50,
                  //         height: 80,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(50),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x19000000),
                  //               blurRadius: 10,
                  //               offset: Offset(0, 4),
                  //             ),
                  //           ],
                  //           color: _color1,
                  //         ),
                  //         padding: const EdgeInsets.only(
                  //           top: 3,
                  //           bottom: 16,
                  //         ),
                  //         child: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           mainAxisAlignment: MainAxisAlignment.end,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(50),
                  //               child: Container(
                  //                 width: 40,
                  //                 height: 40,
                  //                 child: Stack(
                  //                   children: [
                  //                     Container(
                  //                       child: Image.asset(
                  //                         'assets/food.jpg',
                  //                         fit: BoxFit.cover,
                  //                       ),
                  //                       width: 40,
                  //                       height: 40,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xffc4c4c4),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8.12),
                  //             SizedBox(
                  //               width: 30.57,
                  //               height: 9.61,
                  //               child: Text(
                  //                 "Burger",
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   color: Color(0xff67666D),
                  //                   fontSize: 10,
                  //                   fontFamily: "SF Pro Display",
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {
                  //         setState(() {
                  //           _color2 = Color(0xffff4521);
                  //           _color1 = Color(0xffffffff);
                  //           _color3 = Color(0xffffffff);
                  //           _color4 = Color(0xffffffff);
                  //           _color5 = Color(0xffffffff);
                  //         });
                  //       },
                  //       child: Container(
                  //         width: 50,
                  //         height: 80,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(50),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x19000000),
                  //               blurRadius: 10,
                  //               offset: Offset(0, 4),
                  //             ),
                  //           ],
                  //           color: _color2,
                  //         ),
                  //         padding: const EdgeInsets.only(
                  //           top: 3,
                  //           bottom: 16,
                  //         ),
                  //         child: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           mainAxisAlignment: MainAxisAlignment.end,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(50),
                  //               child: Container(
                  //                 width: 40,
                  //                 height: 40,
                  //                 child: Stack(
                  //                   children: [
                  //                     Container(
                  //                       child: Image.asset(
                  //                         'assets/food.jpg',
                  //                         fit: BoxFit.cover,
                  //                       ),
                  //                       width: 40,
                  //                       height: 40,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xffc4c4c4),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8.12),
                  //             SizedBox(
                  //               width: 30.57,
                  //               height: 9.61,
                  //               child: Text(
                  //                 "Burger",
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   color: Color(0xff67666D),
                  //                   fontSize: 10,
                  //                   fontFamily: "SF Pro Display",
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {
                  //         setState(() {
                  //           _color3 = Color(0xffff4521);
                  //           _color1 = Color(0xffffffff);
                  //           _color2 = Color(0xffffffff);
                  //           _color4 = Color(0xffffffff);
                  //           _color5 = Color(0xffffffff);
                  //         });
                  //       },
                  //       child: Container(
                  //         width: 50,
                  //         height: 80,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(50),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x19000000),
                  //               blurRadius: 10,
                  //               offset: Offset(0, 4),
                  //             ),
                  //           ],
                  //           color: _color3,
                  //         ),
                  //         padding: const EdgeInsets.only(
                  //           top: 3,
                  //           bottom: 16,
                  //         ),
                  //         child: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           mainAxisAlignment: MainAxisAlignment.end,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(50),
                  //               child: Container(
                  //                 width: 40,
                  //                 height: 40,
                  //                 child: Stack(
                  //                   children: [
                  //                     Container(
                  //                       child: Image.asset(
                  //                         'assets/food.jpg',
                  //                         fit: BoxFit.cover,
                  //                       ),
                  //                       width: 40,
                  //                       height: 40,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xffc4c4c4),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8.12),
                  //             SizedBox(
                  //               width: 30.57,
                  //               height: 9.61,
                  //               child: Text(
                  //                 "Burger",
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   color: Color(0xff67666D),
                  //                   fontSize: 10,
                  //                   fontFamily: "SF Pro Display",
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     InkWell(
                  //       onTap: () {
                  //         setState(() {
                  //           _color4 = Color(0xffff4521);
                  //           _color1 = Color(0xffffffff);
                  //           _color3 = Color(0xffffffff);
                  //           _color2 = Color(0xffffffff);
                  //           _color5 = Color(0xffffffff);
                  //         });
                  //       },
                  //       child: Container(
                  //         width: 50,
                  //         height: 80,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(50),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x19000000),
                  //               blurRadius: 10,
                  //               offset: Offset(0, 4),
                  //             ),
                  //           ],
                  //           color: _color4,
                  //         ),
                  //         padding: const EdgeInsets.only(
                  //           top: 3,
                  //           bottom: 16,
                  //         ),
                  //         child: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           mainAxisAlignment: MainAxisAlignment.end,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(50),
                  //               child: Container(
                  //                 width: 40,
                  //                 height: 40,
                  //                 child: Stack(
                  //                   children: [
                  //                     Container(
                  //                       child: Image.asset(
                  //                         'assets/food.jpg',
                  //                         fit: BoxFit.cover,
                  //                       ),
                  //                       width: 40,
                  //                       height: 40,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xffc4c4c4),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8.12),
                  //             SizedBox(
                  //               width: 30.57,
                  //               height: 9.61,
                  //               child: Text(
                  //                 "Burger",
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   color: Color(0xff67666D),
                  //                   fontSize: 10,
                  //                   fontFamily: "SF Pro Display",
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 40,
                  ),

                  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  SizedBox(
                    height: heightSize * 0.48,
                    width: widthSize,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            width: 375,
                            height: 128,
                            child: Stack(
                              children: [
                                Container(
                                  width: 375,
                                  height: 128,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18.21),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 15,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    top: 14,
                                    bottom: 17,
                                  ),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(18.21),
                                            child: Container(
                                              child: Image.asset(
                                                'assets/food.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                              width: 100,
                                              height: 96.95,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(18.21),
                                                color: Color(0xffc4c4c4),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 140,
                                  top: 20,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:widthSize*0.5,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              itemsResturent[index].name.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: "SF Pro Rounded",
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.16,
                                              ),
                                            ),

                                            Text(
                                              "${itemsResturent[index].price} DA",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xfffa4a0c),
                                                fontSize: 12,
                                                fontFamily: "SF Pro Display",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: widthSize * 0.52,
                                        height: 80,
                                        child: Text(
                                          itemsResturent[index]
                                              .description
                                              .toString(),
                                          style: TextStyle(
                                            color: Color(0xff8e8e8e),
                                            fontFamily: "SF Pro Display",
                                            fontSize: 14,
                                            letterSpacing: 0.14,
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
                        itemCount: itemsResturent.length),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
