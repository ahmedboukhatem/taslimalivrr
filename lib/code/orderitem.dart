import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'menu.dart';
import '../Models/ordring-item.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItems extends StatefulWidget {
  const OrderItems({Key? key}) : super(key: key);

  @override
  State<OrderItems> createState() => _OrderItemsState();
}

class _OrderItemsState extends State<OrderItems> {
  @override
  bool isChecked = false;
  late List<OrdringItem> items = <OrdringItem>[

    OrdringItem(name:"batata", number:2),
    OrdringItem(name:"bouzalouf", number:6),
    OrdringItem(name:"jib bark ", number:2),
    OrdringItem(name:"bar9ou9", number:1),


  ]  ;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Menu(),

      body: Builder(
        builder: (context) => SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 5, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Icon(Icons.menu, size: 30)),
                        Text(
                          'Food',
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
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      width: widthSize * 0.97,
                      height: 106,
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
                      child: Row(
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
                                "Eat Food ",
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
                                "Zighoud youcef 1000",
                                style: TextStyle(
                                  color: Color(0xff4b545a),
                                  fontSize: 14,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Text(
                    "Items i want : ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),


                  SizedBox(

                    height: 110,
                    child: ListView.separated(
                           shrinkWrap: true,
                        itemBuilder: (context, index) {
                             if (items.length==0){return  Center(
                               child: Text(
                                 "No Item yet",
                                 style: TextStyle(
                                   color: Color(0xffa8a8a8),
                                   fontSize: 15,
                                   fontFamily: "Mulish",
                                   fontWeight: FontWeight.w300,
                                 ),
                               ),
                             );} else
                          return     Padding(
                            padding: const EdgeInsets.only( left: 10 , right: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only( bottom: 10 , left: 10 , right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        items[index].name.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "${items[index].number}",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Container(
                                  height: 0.7,
                                  width: widthSize*0.8,

                                  color: Color(0xFFCCCCCC),
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
                        itemCount: items.length),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        _Additem();

                      },
                      child: Container(
                        width: 318,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffe6e6e6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "+ Add Item",
                              style: TextStyle(
                                color: Color(0xffa8a8a8),
                                fontSize: 15,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightSize * 0.05,
                  )
                  ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "200",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "DZ",
                            style: TextStyle(
                              color: Color(0xff9796a1),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Make it Express",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                    fontFamily: "Mulish"
                                ),
                              ),
                              Text(
                                "get priority",
                                style: TextStyle(
                                  color: Color(0xFFB4B4B4),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "+200",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "DZ",
                            style: TextStyle(
                              color: Color(0xff9796a1),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 318,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffff4521),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Next",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 15,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.bold,
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
        ),
      ),

      // body: Column(
      //   children: [
      //     Column(
      //       children: [
      //         SizedBox(height: 35,),
      //         Padding(
      //          padding: const  EdgeInsets.only(left: 0, right: 0,  bottom: 5),
      //
      //          child:
      //          Column(
      //
      //           children: [
      //             Row(
      //
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //
      //
      //               children: [
      //
      //                 SizedBox(
      //
      //
      //                     child: SvgPicture.asset('assets/menu.svg',)),
      //
      //
      //
      //                    Stack(
      //                     children: [
      //                       SvgPicture.asset('assets/notif.svg',height: 150,width: 150,),
      //                       Positioned(
      //                           left: 73,
      //                           top: 60,
      //
      //                           child:
      //                       SvgPicture.asset('assets/red button.svg',height: 13,width: 13,))
      //
      //                     ],
      //
      //
      //                 ),
      //               ],
      //
      //             )
      //
      //
      //           ],
      //
      //          ),
      //
      //         ),
      //       ],
      //     ),
      //     Text('ahmed boukhatem')
      //   ],
      // ));
    );
  }

  Future<void> _Additem() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,

      // user must tap button!
      builder: (BuildContext context) {

        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "what is your item ",
                    style: TextStyle(
                      color: Color(0xff555b6a),
                      fontSize: 16,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Item Name : ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 5,),
                    SizedBox(
                      height: 20,
                      width: 180,
                      child: TextField(

                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey,width: 1),

                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(
                                0xffff4521),width: 1),
                          ),
                        ),

                      ),



                    ),



                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10,),
                    Row(
                      children: [
                        Icon(Icons.remove_circle_outline_outlined, size: 30 ,  color: Color(
                            0xffffca28),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "02",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        Icon(Icons.add_circle, size: 30 ,  color: Color(
                            0xffffca28),),

                      ],

                    ),

                  ],

                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 93,
                  height: 16,
                  child: Text(
                    "Description : ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(

                  maxLines: 5,
                  decoration: new InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Color(
                        0xfff3f3f3),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Color(
                          0xfff3f3f3), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Color(
                          0xfff3f3f3), width: 1.0),
                    ),
                    hintText: 'Add descreption', hintStyle: TextStyle(

                    color: Color(0xffc5c5c5),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w300,

                  ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: InkWell(
                    onTap: (){

                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 231.76,
                      height: 46.82,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffffca28),
                      ),
                      padding: const EdgeInsets.only(left: 105, right: 106, top: 13, bottom: 14, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text(
                            "Ok",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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

        );
        // return AlertDialog(
        //   title: const Text('AlertDialog Title'),
        //   content: SingleChildScrollView(
        //     child: ListBody(
        //       children: const <Widget>[
        //         Text('This is a demo alert dialog.'),
        //         Text('Would you like to approve of this message?'),
        //       ],
        //     ),
        //   ),
        //   actions: <Widget>[
        //     TextButton(
        //       child: const Text('Approve'),
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //     ),
        //   ],
        // );
      },
    );
  }
}
