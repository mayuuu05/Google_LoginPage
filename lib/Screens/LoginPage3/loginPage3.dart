import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_login_page_with_validation/Screens/LoginPage1/loginPage1.dart';

class LoginPage3 extends StatefulWidget {
  const LoginPage3({super.key});

  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF0F3F8),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  // Image.asset('assets/img/3.png'),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/3.png')
                      )
                    ),
                  ),
                  Text('You\'re signed in',style: TextStyle(
                      fontSize: 25
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          shape: BoxShape.circle
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'M',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 10
                        ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Text(email,style: TextStyle(
                          color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 13
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Complete a few suggesions to get the most out of your Google Account',style: TextStyle(
                    fontSize: 13,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Icon(Icons.lock_outlined,color: Color(0xff0C59D0),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Add or confirm your\n  recovery email or\n   phone number ',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.home_outlined,color: Color(0xff0C59D0),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Add a home\n    address',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.account_circle_outlined,color: Color(0xff0C59D0),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Add a profile \n     picture',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.lightbulb_outline,color: Color(0xff0C59D0),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Sign up to get\n useful tips & \n    updates',style: TextStyle(
                                  fontSize: 11,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text('You can always manage this information in your',style: TextStyle(
                      fontSize: 13,
                    ),),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Google Account',style: TextStyle(
                      fontSize: 13,
                      color:  Color(0xff0C59D0),
                      fontWeight: FontWeight.bold
                    ),),
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
                      Navigator.of(context).pushNamed('/page5');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 250,
                        top: 20
                      ),
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color:btnColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Not now',style: TextStyle(
                          fontSize: 10,
                          color: txtColor
                        ),
                        ),
                      ),
                    ),
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

bool click=false;
Color btnColor =  Colors.grey.shade100;
Color txtColor = Colors.grey.shade400;
