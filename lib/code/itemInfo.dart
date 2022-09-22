
import 'package:flutter/material.dart';

import '../Models/addonlist.dart';
import 'menu.dart';

class ItemsInfo extends StatefulWidget {
  const ItemsInfo({Key? key}) : super(key: key);

  @override
  State<ItemsInfo> createState() => _ItemsInfoState();
}

class _ItemsInfoState extends State<ItemsInfo> {
  @override


  Future<void> _Delivred() async {
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
                    "Your items has been deliverd ",
                    style: TextStyle(
                      color: Color(0xff555b6a),
                      fontSize: 16,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                 SizedBox(
                   height: 10,
                 ),
                Center(child: Icon(Icons.check_circle_outline_rounded,size: 40,color: Colors.green,)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Mulish",
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text(
                          "200",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5,),
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
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 285,
                    height: 1,
                    color: Color(0xfff1f2f3),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [
                        Text(
                          "TOTAL",

                          style: TextStyle(
                            color: Color(0xffff4521),
                            fontSize: 14,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10,),
                        SizedBox(
                          width: 56,
                          height: 14,
                          child: Text(
                            "(2 items)",
                            style: TextStyle(
                              color: Color(0xffbebebe),
                              fontSize: 14,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text(
                          "2200",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5,),
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

  bool isChecked = false;

  List<AddOn> addon =<AddOn>[
    AddOn(name: "Pepper julienned", type: "type", isSelected: false, prix: 100),
    AddOn(name: "slata ", type: "type", isSelected: false, prix: 100),
    AddOn(name: "champinoion", type: "type", isSelected: false, prix: 100),


  ];

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

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children:[
                Container(

                  width: widthSize,
                  height: 250,
                  child: Image.asset(
                    'assets/food.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                  InkWell(
                    onTap: (){

                      _Delivred();

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20 , left: 20),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 15,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Colors.white,
                        ),
        child:   Icon(Icons.arrow_back_ios_sharp, size: 15 ,  color: Color(
            0xff111719),),
                      ),
                    ),
                  ),


                ]


              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ground Beef Tacos",
                      style: TextStyle(
                        color: Color(0xff323643),
                        fontSize: 22,
                        fontFamily: "SF Pro Rounded",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 108,
                          height: 26,
                          child: Text(
                            " 1500 dz",
                            style: TextStyle(
                              color: Color(0xfffe724c),
                              fontSize: 16,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.remove_circle_outline_outlined, size: 30 ,  color: Color(0xfffe724c),),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "02",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            Icon(Icons.add_circle, size: 30 ,  color: Color(0xfffe724c),),

                          ],

                        )

                      ],

                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: widthSize*0.85,
                      child: Text(
                        "Brown the beef better. Lean ground beef  like to use 85% lean angus. Garlic – use fresh  chopped. Spices ",
                        style: TextStyle(
                          color: Color(0xff858891),
                          fontSize: 16,
                          letterSpacing: 0.07,
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choice of Add On",
                          style: TextStyle(
                            color: Color(0xff323643),
                            fontSize: 18,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_back_ios_sharp, size: 20 ,  color: Color(0xfffe724c),),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "02",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            Icon(Icons.arrow_forward_ios_sharp, size: 20 ,  color: Color(0xfffe724c),),

                          ],

                        )

                      ],

                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "Groupe title  01",
                              style: TextStyle(
                                color: Color(
                                    0xff383838),
                                fontSize:18,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),

                          SizedBox(
                           height: heightSize*0.15,
                            child:ListView.separated(
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      SizedBox(
                                        width:widthSize/1.9,
                                        child: Row(
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
                                                        'assets/ima.png',
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
                                            SizedBox(width: 20,),
                                            Text(
                                              addon[index].name.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: "Mulish",
                                              ),
                                            )
                                          ],

                                        ),
                                      ),

                                      Row(
                                        children: [
                                          Text(
                                            "+${addon[index].prix}dz",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: "Mulish",
                                            ),
                                          ),
                                          SizedBox(width: 15,),
                                          Checkbox(
                                            materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                            checkColor: Colors.white,
                                            shape: CircleBorder(),
                                            fillColor:
                                            MaterialStateProperty.resolveWith(getColor),
                                            value: addon[index].isSelected,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                addon[index].isSelected = value!;
                                              });
                                            },
                                          ),
                                        ],
                                      ),


                                    ],

                                  ),


                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: 1,
                                  );
                                },
                                itemCount: addon.length),
                          ),


                        ],



                      ),

                    ),
                    SizedBox(height: 60,),
                    Center(
                      child: Container(
                        width: 167,
                        height: 52,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.50),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33fe724c),
                              blurRadius: 30,
                              offset: Offset(0, 10),
                            ),
                          ],
                          color: Color(0xffff4521),

                        ),

                        child: Padding(
                          padding: const EdgeInsets.only( left: 8.0),
                          child: Row(

                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child:Icon(
                                  Icons.shopping_basket, size: 20 ,  color: Color(
                                    0xffff4521),
                                ) ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "Add to cart ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Mulish",
                                ),
                              )

                            ],
                          ),
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

    );
  }



}
