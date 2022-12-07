import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Number1 = 200 ;
  int Number2 = 100 ;
  int Number3 = 50 ;
  int Number4 = 20 ;
  int Number5 = 10 ;
  int Number6 = 5 ;
  int Number7 = 1 ;

  double Count1 = 0.00 ;
  double Count2 = 0.00 ;
  double Count3 = 0.00 ;
  double Count4 = 0.00 ;
  double Count5 = 0.00 ;
  double Count6 = 0.00 ;
  double Count7 = 0.00 ;

  final MyController1 = TextEditingController () ;
  final MyController2 = TextEditingController () ;
  final MyController3 = TextEditingController () ;
  final MyController4 = TextEditingController () ;
  final MyController5 = TextEditingController () ;
  final MyController6 = TextEditingController () ;
  final MyController7 = TextEditingController () ;


  double Sum1 = 0 ;
  double Sum2 = 0 ;
  double Sum3 = 0 ;
  double Sum4 = 0 ;
  double Sum5 = 0 ;
  double Sum6 = 0 ;
  double Sum7 = 0 ;

  double SumTotal = 0.0000 ;


  @override
  void initState() {
    super.initState();

    MyController1.addListener(() {
      Sum1=double.parse(MyController1.text) ;
      setState(() {
        Count1 = Number1*Sum1 ;

      });
    });
    MyController2.addListener(() {
      Sum2=double.parse(MyController2.text) ;
      setState(() {
        Count2 = Number2*Sum2 ;
        SumTotal = Count1+Count2+Count3+Count4+Count5+Count6+Count7;

      });
    });
    MyController3.addListener(() {
      Sum3=double.parse(MyController3.text) ;
      setState(() {
        Count3 = Number3*Sum3 ;
        SumTotal = Count1+Count2+Count3+Count4+Count5+Count6+Count7;

      });
    });
    MyController4.addListener(() {
      Sum4=double.parse(MyController4.text) ;
      setState(() {
        Count4 = Number4*Sum4 ;
        SumTotal = Count1+Count2+Count3+Count4+Count5+Count6+Count7;

      });
    });
    MyController5.addListener(() {
      Sum5=double.parse(MyController5.text) ;
      setState(() {
        Count5 = Number5*Sum5 ;
        SumTotal = Count1+Count2+Count3+Count4+Count5+Count6+Count7;

      });
    });
    MyController6.addListener(() {
      Sum6=double.parse(MyController6.text) ;
      setState(() {
        Count6 = Number6*Sum6 ;
        SumTotal = Count1+Count2+Count3+Count4+Count5+Count6+Count7;

      });
    });
    MyController7.addListener(() {
      Sum7=double.parse(MyController7.text) ;
      setState(() {
        Count7 = Number7*Sum7 ;
        SumTotal = Count1+Count2+Count3+Count4+Count5+Count6+Count7;

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image(image: AssetImage('assets/images/ratp.png'))
        ],
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'RATP Counter',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(backgroundColor: Colors.green,
                      child: Icon(Icons.delete)),
                  SizedBox(width: 10,),
                  Text('$SumTotal',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green,

                  ), ),
                  SizedBox(width: 80,)
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              height: 1,

              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number1',style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController1,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),


                    Text('$Count1',style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )),





                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10,
                  left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number2',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController2,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('$Count2',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),





                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10,
                  left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number3  ',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController3,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('$Count3',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),





                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10,
                  left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number4  ',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController4,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('$Count4',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),





                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10,
                  left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number5  ',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController5,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('$Count5',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),





                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10,
                  left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number6    ',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController6,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('$Count6',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),





                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10,
                  left: 10
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text('$Number7    ',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('X',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: MyController7,
                      keyboardType: TextInputType.number,
                      style: TextStyle(

                      ),
                    ),
                  ),                  SizedBox(width: 20,),
                  Text('=',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),
                  SizedBox(width: 20,),
                  Text('$Count7',style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  )),





                ],
              ),

            ),
            Row(
             children: [
               SizedBox(width: 10,),
               Text('Powered By Ahmed Mohsen',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 15,
                   color: Colors.blueAccent

               ),),
               SizedBox(width: 10,),
               Container(width: 80,
                 height: 80,
                 child: Image(image: AssetImage('assets/images/ratp.png',
                 )),
               )
             ],
            )

          ],
        ),
      ),
    );
  }


}
