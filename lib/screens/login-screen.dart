import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'main_page.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isMale = true;
  //move the line between Login and S
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    var accriveColor = Colors.green;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
       children: [
        Container(
           decoration:BoxDecoration(
               image: DecorationImage(
                 image: AssetImage(
                     'assets/images/bg.png'
                 ),
                 fit: BoxFit.cover,
               )
           ),
         child: Container(
           child:Column(
             //crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children:<Widget>[
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Column(
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 10,top: 15),
                           child: Image(
                             image: AssetImage('assets/images/b2.PNG'),
                             width: 100,
                             height: 50,
                             fit: BoxFit.cover,
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 25,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('دافوري',
                           style: TextStyle(
                               fontSize: 30
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
               ),

             ],
           ),
]
    )
    ),
    ),
       //Trick to add the shadow for the submit
       buildBottomHalfContainer(true),
       // Main Contianer for Login and Signup
       AnimatedPositioned(
           duration: Duration(milliseconds: 700),
           curve: Curves.bounceInOut,
         top:  isSignupScreen ? 200:230,
           child: AnimatedContainer(
             duration: Duration(milliseconds: 700),
             curve: Curves.bounceInOut,
             padding: EdgeInsets.all(25),
             height: isSignupScreen ?340:250,
             width: MediaQuery.of(context).size.width-40,
             margin: EdgeInsets.symmetric(horizontal: 20),
             decoration: BoxDecoration(
               color: Colors.white.withOpacity(0.9),
               borderRadius: BorderRadius.circular(15),
               boxShadow: [
                 BoxShadow(
                   color: Colors.black.withOpacity(0.3),
                   blurRadius: 15,
                   spreadRadius: 5
                 ),
               ]),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       // column login
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             isSignupScreen=false;
                           });
                         },
                         child: Column(
                           children: [
                             Text("LOGIN",style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                               color: isSignupScreen? Colors.green.withOpacity(0.6):
                                   Colors.green
                             ),
                             ),
                            if(isSignupScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              //color: Colors.black54,
                            )
                           ],
                         ),
                       ),
                       // column Signup
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             isSignupScreen=true;
                           });
                         },
                         child: Column(
                           children: [
                             Text("SINGUP",style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: isSignupScreen? Colors.green: Colors.green.withOpacity(0.5),
                             ),
                             ),
                             if(isSignupScreen)
                             Container(
                               margin: EdgeInsets.only(top: 3),
                               height: 2,
                               width: 55,
                              // color: Colors.black54
                             )
                           ],
                         ),
                       ),
                     ],
                   ),
                   if(isSignupScreen) buildSignupSection(),
                   if(!isSignupScreen) buildSiginection()
                 ],
               ),
             ),
           )
      ),
       //Trick to add the submit button

         buildBottomHalfContainer(false,


       ),
        // Bottom buttons
        Positioned(
          top: MediaQuery.of(context).size.height-90,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text( isSignupScreen ?"Or Signup with":"Or Signup with",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
                Container(
                  margin: EdgeInsets.only(right: 20,left: 20,top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     buildTextButton(
                       MaterialCommunityIcons.facebook,
                       "FaceBook",
                       Colors.indigo
                     ),
                      buildTextButton(
                          MaterialCommunityIcons.google_plus,
                          "Google",
                          Colors.red.shade900
                      ),
                    ],
                  ),
                )
              ],
            )),
       ],
        ),
       );
  }
  // values for sumbit
  Container buildSignupSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.account_circle_outlined,
              "User Name", false, false ),
          buildTextField(Icons.email_outlined,
              "Email", false, true ),
          buildTextField(Icons.lock_outlined,
              "password", true, false ),
        ],
      ),
    );
  }
  Container buildSiginection() {
    return Container(
                 margin: EdgeInsets.only(top: 20),
                 child: Column(
                   children: [
                     buildTextField(
                         Icons.mail_outline,"info@demouri.com", false,true
                        ),
                     buildTextField(
                       MaterialCommunityIcons.lock_outline, "**********",
                         false,true
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Checkbox(
                                 value: isRememberMe,
                                 activeColor: Colors.green,
                                 onChanged: (value){
                                   setState(() {
                                     isRememberMe= !isRememberMe;
                                   });
                                 }
                             ),
                             Text("Remember me",
                             style: TextStyle(
                               fontSize: 12,
                               color: Colors.black87
                             ),),

                           ],
                         ),
                         TextButton(
                           onPressed: (){},
                           child:Text("Forget Password?",
                           style: TextStyle(
                             fontSize: 12,
                             color: Colors.black87,
                           ),
                           ),
                         )

                       ],
                     )
                   ],

                 ),
               );
  }

  TextButton buildTextButton(
      IconData icon,String title, Color backgroundColor
      ) {
    return TextButton(
                     onPressed: (){},
                     style:TextButton.styleFrom(
                       side: BorderSide(width: 1,color: Colors.grey),
                       minimumSize: Size(155, 40),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                       ),
                       primary: Colors.white,
                       backgroundColor:backgroundColor
                     ),
                     child: Row(
                       children: [
                         Icon(
                             icon,
                         ),
                         SizedBox(
                           width: 5,
                         ),
                         Text(
                             title,
                         )
                       ],
                     )
                 );
  }

  Widget buildBottomHalfContainer(bool showShadow) {
    return AnimatedPositioned(
      
      duration: Duration(milliseconds: 700),
        curve: Curves.bounceInOut,
        top: isSignupScreen ? 500:430,
        left: 0,
        right: 0,
        child: Center(
          // change button
          child: TextButton(
            // here is the function for LLOGIN
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => MainPage(),
              ));
            },
            child: Container(
              height: 90,
              width: 90,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color:
                  Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    if(showShadow)
                      BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          spreadRadius: 1.5,
                          blurRadius: 10,
                      )

                  ]
              ),
              child: !showShadow ? Container(

                height: 90,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.green[200],
                          Colors.greenAccent[400]
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(

                          color: Colors.black.withOpacity(.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0,1)
                      )
                    ]
                ),
                child:Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ) ,
              ):Center(),
            ),
          ),
        )
    );

  }


  Widget buildTextField(
      IconData icon, String hintText ,bool isPassword,
      bool isEmail
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
          obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress:TextInputType.text,
        decoration:InputDecoration(
                           prefixIcon:
                           Icon(icon,
                           color: Colors.black87,),
                           enabledBorder: OutlineInputBorder(
                             borderSide:
                             BorderSide(color: Colors.grey),
                             borderRadius:
                               BorderRadius.all(
                                 Radius.circular(35.0)
                               ),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderSide:
                             BorderSide(color: Colors.grey),
                             borderRadius:
                             BorderRadius.all(
                                 Radius.circular(35.0)
                             ),
                           ),
                           contentPadding: EdgeInsets.all(10),
                           hintText: hintText,
                           hintStyle: TextStyle(
                             fontSize: 14,color: Colors.grey
                           )
                         ),
      ),
    );
  }
}









