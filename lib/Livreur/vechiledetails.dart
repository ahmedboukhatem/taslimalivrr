import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vechile extends StatefulWidget {
  const Vechile({Key? key}) : super(key: key);

  @override
  State<Vechile> createState() => _VechileState();
}
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
class _VechileState extends State<Vechile> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),

          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: const Icon(Icons.arrow_back_ios_sharp, size: 30)),
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
              SizedBox(height: 40,),
              Text(
                "Vechile Details",
                style: TextStyle(
                  color: Color(0xff030919),
                  fontSize: 18,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8,),
              SizedBox(
                width: 304,
                child: Text(
                  "Please provide us with your vechile details for proper arrangement",
                  style: TextStyle(
                    color: Color(0xff555b6a),
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 48,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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

                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "I have a vechile to use for delivery",
                      style: TextStyle(
                        color: Color(0xff030919),
                        fontSize: 14,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )


                ],

              ),

              SizedBox(height: 200,),
              InkWell(
                onTap: (){},
                child: Center(
                  child: Container(
                    width: 336,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffff4521),
                    ),

                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 150,
                  height: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Container(
                        width: 39,
                        height: 2,
                        color: Color(0xffd9d9d9
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 39,
                        height: 2,
                        color: Color(0xffffca28),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 39,
                        height: 2,
                        color: Color(0xffd9d9d9),
                      ),
                    ],
                  ),
                ),
              ),



            ],
          ),

        ),

      ),

    );
  }
}
