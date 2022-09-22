
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Models/myitemsList.dart';



class MyItems extends StatefulWidget {
  const MyItems({Key? key}) : super(key: key);

  @override
  State<MyItems> createState() => _MyItemsState();
}

class _MyItemsState extends State<MyItems> {

  List<MyitemsList> myitemslist = <MyitemsList>[

    MyitemsList(name: "aljelban", type: "bensanan", description: "bensanan yakol aljalban ", nb: 2, Price: 1500),
    MyitemsList(name: "hamdan", type: "l9aroun", description: "hamdan yakol yakol l9arnoun ", nb: 1, Price: 2000),
    MyitemsList(name: "chaklouba", type: "gernina", description: "kol wala nod  ", nb: 3, Price: 1500),



  ];

  bool isChecked = false;
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
  @override
  Widget build(BuildContext context) {

    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Builder(
        builder: (context) {
          return SafeArea(

            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20 ,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x2b000000),
                                    blurRadius: 50,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Colors.white,
                              ),

                              child: Icon(Icons.arrow_back_ios_sharp, size: 20))),
                      Text(
                        'My Items',
                        style: (TextStyle(
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          color: Color(0xff030303),
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),


                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: widthSize,

                    child: Builder(
                      builder: (context) {
                        return ListView.separated(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20.0, left: 20),
                                child: Container(
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xe5e0e0e0),
                                        blurRadius: 25,
                                        offset: Offset(0, 8),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                                    child: Row(

                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 15),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(15),
                                            child: Container(
                                              width: 70,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Color(0xffc4c4c4),
                                              ),
                                              child:  Image.asset(
                                                'assets/epicery.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 240,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                              myitemslist[index]
                                                  .name
                                                  .toString(),
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontFamily: "SF Pro Rounded",
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: (){
                                                        setState(() {
                                                          myitemslist.removeAt(index);
                                                        

                                                          });
                                                     
   

                                                      },

                                                      child: Icon(Icons.cancel_outlined, size: 20 , color: Color(0xfffe724c),)),



                                                ],

                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              myitemslist[index]
                                                  .description
                                                  .toString(),
                                              style: TextStyle(
                                                color: Color(0xff8b8a9d),
                                                fontSize: 14,
                                                fontFamily: "Mulish",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 4,),

                                            SizedBox(
                                              width: 240,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "${myitemslist[index].Price} DA",
                                                    style: TextStyle(
                                                      color: Color(0xfffe724c),
                                                      fontSize: 14,
                                                      fontFamily: "Mulish",
                                                      fontWeight: FontWeight.normal,

                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      InkWell(

                                                          onTap:(){

                                                            setState(() {
                                                              myitemslist[index].nb--;
                                                              if(myitemslist[index].nb <= 1){

                                                                myitemslist[index].nb=1;

                                                              };
                                                            });

                                                          },
                                                          child: Icon(Icons.remove_circle_outline_outlined, size: 25 ,  color: Color(
                                                              0xffffca28),)),
                                                      Padding(
                                                        padding: const EdgeInsets.all(5.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            return Text(
                                                              "${myitemslist[index].nb} ",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 14,
                                                                fontFamily: "Mulish",
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            );
                                                          }
                                                        ),
                                                      ),

                                                      InkWell(
                                                          onTap:(){

                                                            setState(() {
                                                               myitemslist[index].nb++;
                                                            });





                                                          },

                                                          child: Icon(Icons.add_circle, size: 25 ,  color: Color(
                                                              0xffffca28),)),

                                                    ],

                                                  )

                                                ],

                                              ),
                                            ),

                                          ],
                                        ),






                                      ],

                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: myitemslist.length);
                      }
                    ),
                  ),
                ),







                SizedBox(

                  height: 20,
                ),

                Center(
                  child: Container(
                    width: 330,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xffeeeeee), width: 1, ),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          SizedBox(width: 30,),
                          Expanded(
                            child: TextField(
                              decoration:  InputDecoration.collapsed(
                                  hintText:  'Promo Code',
                                hintStyle: TextStyle(color: Color(0xffe3e3e3),
                                  fontSize: 14,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w300,),
                              ),
                            ),
                          ),
                          Container(
                            width: 96.52,
                            height: 44.13,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.50),
                              color: Color(0xffe9e9e9),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Apply",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "Mulish",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],

                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20 , right: 20),
                  child: SizedBox(
                    height: widthSize*0.2,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    myitemslist[index]
                                        .name
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "Mulish",

                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "${myitemslist[index].Price} ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(

                                        width: 28,
                                        height: 25,
                                        child: Center(
                                          child: Text(
                                            "DZ",
                                            style: TextStyle(
                                                color: Color(0xff9796a1),
                                                fontSize: 14,
                                                fontFamily: "Mulish"
                                            ),
                                          ),
                                        ),
                                      ),




                                    ],

                                  )
                                ],

                              ),
                              SizedBox(height: 5,),
                              Center(
                                child: Container(
                                  width: 331,
                                  height: 1,
                                  color: Color(0xffdcdcdc),
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: myitemslist.length),
                  ),
                ),


                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        "Delevery",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Mulish",

                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
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

                            width: 28,
                            height: 25,
                            child: Center(
                              child: Text(
                                "DZ",
                                style: TextStyle(
                                    color: Color(0xff9796a1),
                                    fontSize: 14,
                                    fontFamily: "Mulish"
                                ),
                              ),
                            ),
                          ),




                        ],

                      )
                    ],

                  ),
                ),

            SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "Totale",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Mulish",

                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "1500",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(

                      width: 28,
                      height: 25,
                      child: Center(
                        child: Text(
                          "DZ",
                          style: TextStyle(
                              color: Color(0xff9796a1),
                              fontSize: 14,
                              fontFamily: "Mulish"
                          ),
                        ),
                      ),
                    ),




                  ],

                )
              ],

            ),
          ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 10),
                  child: Row(
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
                ),

                SizedBox(height: 20,),
                InkWell(

                  onTap: (){


                            _Rating();


                  },
                  child: Center(
                    child: Container(
                      width: 248,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.50),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40fe724c),
                            blurRadius: 30,
                            offset: Offset(0, 8),
                          ),
                        ],
                        color: Color(0xfffa4a0c),
                      ),
                      child: Center(
                          child: Text(
                            "CONFIRM",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.20,
                            ),
                          )



                      ),
                    ),
                  ),
                )
              ],


            ),

          );
        }
      ),

    );
  }

  Future<void> _Rating() async {
    late String Rate ="medium";




    return showDialog<void>(
      context: context,
      barrierDismissible: true,

      // user must tap button!
      builder: (BuildContext context) {

        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) { return
           Dialog(
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
                      "tell us how the delivery was ",
                      style: TextStyle(
                        color: Color(0xff555b6a),
                        fontSize: 16,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

              Center(
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {

                    print(rating);
                    print(Rate);
                    setState(() {
                      if(rating <2.5){
                        Rate ="bad";
                      }else{
                        if(rating >= 2.5 && rating <=3.5){
                          Rate ="medium";
                        }else{
                          if(rating > 3.5 ){
                            Rate ="excellent";
                          }


                        }
                      }
                    });

                  },
                ),
              ),


                    SizedBox(height: 15,),
                  Center(
                    child: Builder(
                      builder: (context) {
                        return Text(
                         Rate,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3e4958),
                            fontSize: 16,
                            fontFamily: "Mulish"
                          ),
                        );
                      }
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

          ); },
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
