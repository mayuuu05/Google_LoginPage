import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_login_page_with_validation/Screens/LoginPage1/loginPage1.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}
GlobalKey<FormState>Forkey = GlobalKey();
TextEditingController txtPassword = TextEditingController();

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F8),
      body: Form(
        key: Forkey,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                height: 400,
                width: 900,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 30,
                              right: 110
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/img/g.png'),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 15,
                                right: 50
                            ),
                            child: Text('Welcome',style: TextStyle(
                                fontSize: 30
                            ),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10,
                                left: 30
                            ),
                            child: OutlinedButton(onPressed: () {

                            }, child: Text(email,style: TextStyle(
                              color: Colors.black
                            ),))
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100,left: 230),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 390,
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "password must be required";
                                }
                                if(value!.length<=8)
                                {
                                  return 'Password must be 8 characters';
                                }

                              },
                              obscureText:  true,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 1
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        // color: Color(0xff0C59D0),
                                        width: 1
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Color(0xff0C59D0),
                                        width: 2
                                    ),
                                  ),
                                  labelText: 'Enter your Password',
                                  labelStyle: TextStyle(
                                    color: Color(0xff0C59D0),
                                    fontSize: 15,
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 270,
                                top: 10
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tickBox = !tickBox;
                                      if(tickBox)
                                        {
                                          SuffixIcon = Icons.check_box_outline_blank;
                                        }
                                      else
                                        {
                                          SuffixIcon = (Icons.check_box_outlined);
                                        }
                                    });
                                  },
                                  child: Icon(
                                    SuffixIcon,
                                    size: 22,
                                    color: Colors.black,

                                  ),
                                ),

                                SizedBox(width: 10,),
                                Text('Show Password',style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40,
                                    top: 120,
                                    left: 200
                                ),
                                child: Text('Forgot Password?',style: TextStyle(
                                    fontSize: 12,
                                    wordSpacing: 2,
                                    color: Color(0xff0C59D0),
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

                                    bool response = Forkey.currentState!.validate();
                                    if(response)
                                    {
                                      pass = txtPassword.text;
                                      Navigator.of(context).pushNamed('/page4');
                                    }
                                    if(Forkey.currentState!.validate())
                                    {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          // behavior: SnackBarBehavior.floating,
                                          content: const Text(
                                            'Password Created Successfuly!',
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                          ),
                                          backgroundColor: Colors.green,
                                          duration: Duration(seconds: 4),
                                        ),
                                      );
                                    }
                                  });

                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 120
                                  ),
                                  height: 30,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: btnColor,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('Next',style: TextStyle(
                                      color: txtColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 220,right: 500
                    ),
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(10),
                      focusColor: Colors.white,
                      underline: Container(
                        width: 0,
                      ),
                      padding: EdgeInsets.all(10),
                      value:dropDownSelectedValue,
                      items: [
                        DropdownMenuItem(
                            value: 0,
                            child: Text('English(United States)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 1,
                            child: Text('Afrikaans (Germanic)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 2,
                            child: Text('Gujarati (Indo-Aryan)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 3,
                            child: Text('Hindi (Indo-Aryan)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 4,
                            child: Text('Chinese (Sinitic)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 5,
                            child: Text('Egyptian Arabic (Semitic)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 6,
                            child: Text('Italian (Romance)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 7,
                            child: Text('Bulgarian',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 8,
                            child: Text('French (Federal)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                        DropdownMenuItem(
                            value: 9,
                            child: Text('Dzongkha (Tibeto-Burman)',style: TextStyle(
                                color:Color(0xff6F7375),fontSize: 15
                            ),)),
                      ], onChanged: (value) {
                      dropDownSelectedValue = value!;
                    },),
                  ),
                  Text('Helps',style: TextStyle(color:Color(0xff6F7375),fontSize: 14),),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Privacy',style: TextStyle(color:Color(0xff6F7375),fontSize: 14),),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Terms',style: TextStyle(color:Color(0xff6F7375),fontSize: 14),)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

int dropDownSelectedValue = 0;

bool click=false;
Color btnColor = Colors.grey.shade200;
Color txtColor = Colors.black;
String pass = '';
bool tickBox = false;
IconData SuffixIcon = Icons.check_box_outline_blank;
int check= 0;
