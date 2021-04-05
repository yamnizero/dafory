import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
 class Reservation extends StatefulWidget {
   @override
   _ReservationState createState() => _ReservationState();
 }

 class _ReservationState extends State<Reservation> {
   // calender
   String _selectedDate="Tap on the button to select a date";
   Future<Void> _openDatePicker(BuildContext context) async {
     final DateTime d = await showDatePicker(
         context: context,
         initialDate: DateTime.now(),
         firstDate: new DateTime(DateTime.now().year - 3),
         lastDate: new DateTime(DateTime.now().year + 3));
 if (d != null){
   setState(() {
     _selectedDate = new DateFormat.yMMMd("en_US").format(d).toString();
   });
 }


   }


   @override
   Widget build(BuildContext context) {
     return
       MaterialApp(
       debugShowCheckedModeBanner:false,
       home: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.green[300],
           leading:  IconButton(icon:Icon(Icons.arrow_back), onPressed: (){
             Navigator.pushNamed(context,'/');
           }),
         ),
         body: Stack(
           children: [
                 IconButton(icon:Icon(Icons.menu,color: Colors.grey,), onPressed: (){}),
         Container(
           decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/images/back.jpeg'),
                 fit: BoxFit.cover,
               )
           ),
         ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Padding(
                   padding:  EdgeInsets.symmetric(
                       horizontal: 60.0,
                       vertical: 20.0),
                   child: Container(
                     height: 55,
                     width: MediaQuery.of(context).size.width *.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green[300].withOpacity(0.5)
                    ),
                     child: Center(child: Text('اختر تاريخ الحجز',
                     style: TextStyle(fontSize: 22),
                     )),
                   ),
                 ),
                 Padding(
                   padding:  EdgeInsets.symmetric(
                       horizontal: 60.0,
                       vertical: 15.0),
                   child:Container(
                     height: 55,
                     width: MediaQuery.of(context).size.width *.7,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.green[300].withOpacity(0.5)
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text(_selectedDate),
                         IconButton(
                           alignment: Alignment.centerRight,
                           icon: Icon(Icons.calendar_today),
                           onPressed: (){
                             _openDatePicker(context);
                           },
                         ),
                       ],
                     ),
                   )
                 ),
                 SizedBox(
                   height: 25,
                 ),
                 Container(
                   padding: EdgeInsets.only(right: 20),
                   alignment: Alignment.topRight,
                     child:
                     Text('الفتره الصباحيه',
                     style: TextStyle(fontSize: 22),)),
                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(

                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green.shade300,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green.shade300,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green.shade800,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 5,),
                 Container(
                     padding: EdgeInsets.only(right: 20),
                     alignment: Alignment.topRight,
                     child:
                     Text('الفتره المسائية',
                       style: TextStyle(fontSize: 22),)),
                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(

                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green.shade300,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green.shade300,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green.shade300,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                             Container(
                               alignment: Alignment.center,
                               height: 55,
                               width: MediaQuery.of(context).size.width*0.1,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.green,
                               ),
                               child: Padding(

                                   padding: const EdgeInsets.only(top: 8),
                                   child:
                                   Text('7-9',
                                     style: TextStyle(fontSize: 22),)
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 5,),
                 Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Row(
                           children: [
                           Container(
                             height: 35,
                             width: MediaQuery.of(context).size.width*0.09,
                             color: Colors.green.shade900,
                           ),
                           SizedBox(width: 8,),
                           Text('SELECTED',
                             style: TextStyle(
                                 fontSize: 13,
                                 color: Colors.black87),),
                         ],),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Row(
                           children: [
                             Container(
                               height: 35,
                               width: MediaQuery.of(context).size.width*0.09,
                               color: Colors.green.shade300,
                             ),
                             SizedBox(width: 8,),
                             Text('NOT AVAILABLE',
                               style: TextStyle(
                                   fontSize: 13,
                                   color: Colors.black87),),
                           ],),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Row(
                           children: [
                             Container(
                               height: 35,
                               width: MediaQuery.of(context).size.width*0.09,
                               color: Colors.green,
                             ),
                             SizedBox(width: 8,),
                             Text('AVAILABLE',
                               style: TextStyle(
                                   fontSize: 13,
                                   color: Colors.black87),),
                           ],),
                       ),


                     ],
                   ),
                 )
               ],
             ),
       ]
       ),
     )
     );
   }
 }
