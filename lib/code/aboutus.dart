import 'dart:ffi';

import 'package:flutter/material.dart';

import 'menu.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {

    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Menu(),

      body: Builder(

      builder: (context) => SafeArea(
        child: Padding(

          padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'About Us',
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
              SizedBox(height: 20,),

              SizedBox(
                height: heightSize*0.82,
                child: SingleChildScrollView(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    SizedBox(
                      width: widthSize*0.9,

                      child: Text(
                        "Lorem ipsum",
                        style: TextStyle(
                          color: Color(0xff3e4958),
                          fontSize: 18,
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: widthSize*0.9,

                      child: Text(
                        "dolor sit amet, consectetur adipiscing elit.uam etum lrem elementum tincidunt aliquam mauris, non quam congue faucibus. Adipiscing nunc adipiscing sem tortor,\n\nlectus eu sed neque\n\n   Volutpat quam scelerisque quis scelerisque erat metus habitant ut et. Vitae ut pulvinar malesuada ut tortor egestas turpis cursus morbi. Pellentesque sed sed at massa mauris. Nisl id volutpat at etiam risus, pellentesque velit, dignissim lorem. Ultricies posuere nibh ac bibendum varius aliquam sedLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus libero donec adipiscing laoreet in. Aliquam egestas amet ultricies lobortis dictum lacus, donec id porttitor. Nisi lorem elementum tincidunt aliquam mauris, non quam congue faucibus. Adipiscing nunc adipiscing sem tortor, lectus eu sed neque. Volutpat quam scelerisque quis scelerisque erat metus habitant ut et. Vitae ut pulvinar malesuada ut tortor egestas turpis cursus morbi. Pellentesque sed sed at massa mauris. Nisl id volutpat at etiam \n\npellentesque velit\n\n   dignissim lorem. Ultricies posuere nibh ac bibendum varius aliquam sedLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus libero donec adipiscing laoreet in. Aliquam egestas amet ultricies lobortis dictum lacus, donec id porttitor. Nisi lorem elementum tincidunt aliquam mauris, non quam congue faucibus. Adipiscing nunc adipiscing sem tortor, lectus eu sed neque. Volutpat quam sceleris m ut s cursus morbi. Pellentesque sed sed at massa mauris. Nisl id volutpat.\n",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w300,
                            color: Color(0xff979797)
                        ),
                      ),

                    ),
                    SizedBox(height: 60,)

                  ],
                )),
              ),




            ],

          ),
        ),
      )


      ),

    );




  }




}

