
import 'package:flutter/material.dart';
import 'package:taslimaapp/Livreur/Orders-Done.dart';
import 'package:taslimaapp/Livreur/onbording.dart';
import 'package:taslimaapp/code/add_phnone_number.dart';
import 'package:taslimaapp/code/profile.dart';

import 'Livreur/confirmPickup.dart';
import 'Livreur/orders.dart';
import 'Livreur/ordring.dart';
import 'Livreur/registring.dart';
import 'Livreur/vechiledetails.dart';
import 'code/Notifications.dart';
import 'code/aboutus.dart';
import 'code/home screen.dart';
import 'code/myitems.dart';
import 'code/other.dart';
import 'code/verification-code.dart';
import 'code/personalinfo.dart';
import 'code/orderitem.dart';
import 'code/menu.dart';
import 'code/menu_resturant.dart';
import 'code/itemInfo.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
      home:const  OrderItems ( ),
      routes:{

        AddPhoneNumber.idScreen:(context)=> const AddPhoneNumber(),
        VerificationCode.idScreen:(context)=> const VerificationCode(),
      }
    );
  }
}






