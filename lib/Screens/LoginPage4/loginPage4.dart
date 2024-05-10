import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage4 extends StatefulWidget {
  const LoginPage4({super.key});

  @override
  State<LoginPage4> createState() => _LoginPage4State();
}

class _LoginPage4State extends State<LoginPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF0F3F8),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 450,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Image.asset('assets/img/header.png'),
                  Text('Welcome Mayuri',style: TextStyle(
                      fontSize: 20
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Turn on sync to backup you stuff and use it on any device',style: TextStyle(
                    fontSize: 13,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:  Container(
                      height: 155,
                      width: 3590,
                      decoration: BoxDecoration(
                        color: Color(0xffF8F9FB),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border,color: Color(0xff0C59D0),),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('BookMarks',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.event_note_outlined,color: Color(0xff0C59D0),size: 20,),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(' Autofill',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.extension_outlined,color: Color(0xff0C59D0),size: 20,),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Extensions',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.devices,color: Color(0xff0C59D0),size: 20,),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('History and more',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text('You can always choose what to sync in settings. Google may personalize Search\n                             and other services based on your history.',style: TextStyle(
                      fontSize: 9,
                    ),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:  Color(0xff0C59D0),
                          )
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color:  Color(0xff0C59D0),
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            color:  Color(0xff0C59D0),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color:  Colors.white,
                              width: 2
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Turn on sync',
                          style: TextStyle(
                            color:  Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              click = !click;
                              if (click) {
                                btnColor = Color(0xff0C59D0);
                                txtColor = Colors.white;
                              } else {
                                btnColor = Colors.grey.shade200;
                                txtColor = Colors.black;
                              }
                            });
                          Navigator.of(context).pushNamed('/page3');
                        },
                        child: Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: btnColor,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color:  txtColor,
                              )
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'No thanks',
                            style: TextStyle(
                              color:  txtColor,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
int dropDownSelectedValue = 0;

bool click=false;
Color btnColor = Colors.grey.shade200;
Color txtColor = Colors.grey.shade800;