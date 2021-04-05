import 'dart:ui';

import 'package:flutter/material.dart';


class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('دافوري',style: TextStyle(fontSize: 22),)),
        backgroundColor: Colors.green[300],
        leading:  IconButton(icon:Icon(Icons.arrow_back), onPressed: (){
          Navigator.pushNamed(context,'/');
        }),
    ),
          body: Stack(

            children: [
              Container(
                decoration:BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/back.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
              ),
              ),
              Column(
                children: [
                  Padding(
                  padding: const EdgeInsets.only(left: 40,right: 30,top: 35),
                  child: Container(
                    height: 190,
                    width:MediaQuery.of(context).size.width*.9,

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: const[
                          BoxShadow(blurRadius: 10)
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/b4.jpg'),
                            
                            fit: BoxFit.cover
                        )
                    ),),
                ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('خدمات الملعب',style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.green.shade300.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.local_parking,),
                                    Text('موقف عربات',style: TextStyle(fontSize: 18,color: Colors.black87),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.green.shade300.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.wb_shade,),
                                    Text('مسجد',style: TextStyle(fontSize: 18,color: Colors.black87),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.green.shade300.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.grain,),
                                    Text('مياه',style: TextStyle(fontSize: 18,color: Colors.black87),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.green.shade300.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.wc,),
                                    Text('حمامات',style: TextStyle(fontSize: 18,color: Colors.black87),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.green.shade300.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   // Icon(Icons.local_parking,),
                                    Text('',style: TextStyle(fontSize: 18,color: Colors.black87),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.green.shade300.withOpacity(0.7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  //  Icon(Icons.local_parking,),
                                  //  Text('موقف عربات',style: TextStyle(fontSize: 18,color: Colors.black87),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child:
                        Row(
                          children: [
                            Text('قوانين الملاعب',style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(width: 15,),
                            Icon(Icons.open_with,),

                          ],
                        ),
                        onTap: (){},
                      ),
                      SizedBox(width: 30,),
                      InkWell(
                        child: Row(
                          children: [
                            Text('موقع ملعب',style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(width: 15,),
                            Icon(Icons.location_on,),
                          ],
                        ),
                        onTap: (){
                          Navigator.pushNamed(context,'/GoogleMapScreen');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height:25 ,),
                  Container(
                    height: 36,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.green

                    ),
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 3.0),
                        child: Text('حجز الملعب ',style: TextStyle(fontSize: 19),),
                      ),
                      onTap: (){},
                    ),
                  ),

                ],
              )
            ],

          ),
    ),
    );
  }

}
