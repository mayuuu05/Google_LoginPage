import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}
GlobalKey<FormState>Forkey = GlobalKey();
TextEditingController txtEmail = TextEditingController();

class _LoginPage1State extends State<LoginPage1> {
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
                           right: 60
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
                             right: 20
                           ),
                           child: Text('Sign in',style: TextStyle(
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
                           child: Text('Use your Google Account',style: TextStyle(
                               fontSize: 12,
                             wordSpacing: 1
                           ),),
                         ),
                       )
                     ],
                   ),
                   Container(
                     margin: EdgeInsets.only(top: 100,left: 300),
                     child: Column(
                       children: [
                         Container(
                           height: 50,
                           width: 390,
                           child: TextFormField(
                             onChanged: (value) {
                               setState(() {
                                 email = value;
                               });
                             },
                             validator: (value) {
                               // if(value! isEmpty)
                               // {
                               //   return "Couldn't find your Google Account!";
                               // }
                             },
                             textInputAction: TextInputAction.next,
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(5),
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(5),
                                 borderSide: BorderSide(
                                   color: Colors.grey,
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
                               labelText: 'Email or Phone',
                               labelStyle: TextStyle(
                                 color: Colors.grey.shade500,
                                   fontSize: 15,
                               ),
                             ),
                             controller: txtEmail,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(
                             right: 290,
                             top: 10
                           ),
                           child: Text('Forgot Password?',style: TextStyle(
                             fontSize: 12,
                             color: Color(0xff0C59D0),
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(
                             right: 80,
                             top: 70
                           ),
                           child: Text('Not your computer? Use Guest mode to sign in privately.',style: TextStyle(
                             fontSize: 12,
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(
                             right: 190,
                           ),
                           child: Text('Learn more about using Guest mode',style: TextStyle(
                             fontSize: 12,
                             color: Color(0xff0C59D0),
                             fontWeight: FontWeight.bold
                           ),),
                         ),
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(
                                 right: 40,
                                 top: 40,
                                 left: 200
                               ),
                               child: Text('Create account',style: TextStyle(
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
                                       email = txtEmail.text;
                                       // pass = txtPassword.text;
                                       Navigator.of(context).pushNamed('/page2');
                                     }
                                 });

                               },
                               child: Container(
                                 margin: EdgeInsets.only(
                                   top: 40
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
String email = '';
bool value = false;
