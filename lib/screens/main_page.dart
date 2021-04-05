import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'home/main_home.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isButtonScreen = true;
   GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget titlesection= Container( padding: EdgeInsets.all(10.0),
      child: Expanded(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),

                  ),
              ],
            ),

          ],
        ),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:
      Directionality(
        textDirection: TextDirection.rtl,

        child: Scaffold(
          key: _scaffoldKEy,
          endDrawerEnableOpenDragGesture: false,
          resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
         drawer: Drawer(
           child: ListView(
             children: [
               UserAccountsDrawerHeader(
                 currentAccountPicture: CircleAvatar(child: Icon(Icons.person),),
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('assets/images/back.jpeg'),
                   fit: BoxFit.cover,
                 )
               ),
               ),
               ListTile(
                 title: Text('الصفحة الرئيسية'),
                 leading: Icon(Icons.home),
                 onTap: (){},
               ),
               ListTile(
                 title: Text('الاشعارت'),
                 leading: Icon(Icons.notifications),
                 onTap: (){},
               ),

               ListTile(
                 title: Text('خدمات'),
                 leading: Icon(Icons.comment),
               onTap: (){
                 Navigator.pushNamed(context,'/Services');
               },
             ),

             ListTile(
               title: Text('تسجيل الخروج'),
             leading: Icon(Icons.home),
             onTap: (){},
           ),
         ],
       ),
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
    children: [
    Padding(
    padding:  EdgeInsets.symmetric(
    horizontal: 24.0,
    vertical: 40.0),
    child: Row(
    children: [
    //more
    Container(

    height: 35,
    child:  InkWell(
    child:

    Icon(
      Icons.more_outlined,color: Colors.grey,),
    onTap: ()
    {
    _scaffoldKEy.currentState.openDrawer();
    }),

    ),
    //search
    Padding(
    padding: const EdgeInsets.only(right: 35),
    child: Container(
    height: 50,

    width: MediaQuery.of(context).size.width*0.7,
    decoration: BoxDecoration(
    color: Colors.white.withOpacity(0.9),
    borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.symmetric(horizontal: 14.0),
    child: Row(
    children: [

    Icon(Icons.search,
    color: Colors.grey,
    ),
    Expanded(
    child: TextField(
    style: TextStyle(fontSize: 20.0),
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderSide: BorderSide.none,
    ),
    hintText:'بحث...'),
    )
    ),
    InkWell(
    child: Icon(Icons.filter_alt_sharp,
    color: Colors.grey,
    ),
    onTap: (){
      _tripEditModalButtonsheet(context);
    },
    )
    ],
    ),


    ),
    ),

    ],
    ),

    ),
    Expanded(
    flex: 0,
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/b2.png')
    )
    ),

    child:
    Stack(
    children: [  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    buildTextButton(
    MaterialCommunityIcons.cash_register,
    "تمرين فردي" ,
    Colors.black87
    ),
    Padding(padding: EdgeInsets.only(right: 10
    ,left: 10)),
    buildTextButton(
    MaterialCommunityIcons.cash_register,
    "حجوزات",
    Colors.black87
    ),
    ],
    ),],

    ),
    ),
    ),
    SizedBox(
    height: 5,
    ),
    Expanded(
    flex: 3,
    child: Padding(
    padding: const EdgeInsets.all(25.0),

    child: SingleChildScrollView(

    child:  Container(
    height:MediaQuery.of(context).size.height*0.8,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
    itemCount: 10,
    itemBuilder:(context, index){
    return topOffersCard(

    );

    },

    ),
    ),
    ),
    ),
    ),
    ],
    ),
    ],
    ),

    ),
    ),

    );

  }



  buildTextButton(IconData  icon,String title,Color backgroundColor) {

    return TextButton(

        onPressed: (){},
        style:TextButton.styleFrom(
          backgroundColor: Colors.white30,
          side: BorderSide(width: 1,color: Colors.grey),
          minimumSize: Size(155, 40),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          primary: Colors.white,

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
              title,style: TextStyle(
              color:
              Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,

            ),
            ),

          ],
        )
    );
  }

  Widget topOffersCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 214,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70)
          ),
          color: Colors.transparent.withOpacity(0.1),
          child: Column(
            children: [
              Container(
                height: 205,
                width:410,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: const[
                      BoxShadow(blurRadius: 10)
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/b4.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.only(top:160),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white60.withOpacity(0.6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pushNamed(
                                  context, '/Reservation');
                            }, child: Text('احجز الان',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                            ))
                          ],
                        ),

                      ),
                    )
                  ],
                ) ,
              ),

            ],
          ),
        ),
      ),
    );
  }


  // Edit Modle
void _tripEditModalButtonsheet(context){
    showModalBottomSheet(context:context ,builder:(BuildContext bc){
      Colors.transparent;
       return Container(
         height: MediaQuery.of(context).size.height*.60,
         decoration: BoxDecoration(
           color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(50),
                 topRight: Radius.circular(50),

               )
         ),
         child: Padding(
           padding: const EdgeInsets.all(15.0),
           child: Column(
             children: [
               Row(
                 children: [
                   Text('dafory'),
                   Spacer(),
                   IconButton(icon:Icon(Icons.cancel,
                   color: Colors.grey,
                     size: 25,
                   ),
                       onPressed: (){
                     Navigator.of(context).pop();
                       })
                 ],
               ),
             ],
           ),
         ),
       );
    });
}
}




