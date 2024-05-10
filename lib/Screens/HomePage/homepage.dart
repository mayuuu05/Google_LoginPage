import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 1150
            ),
            child: Row(
              children: [
                Text('Gmail',style: TextStyle(
                    color:Color(0xff6F7375)
                ),),
                SizedBox(
                  width: 20,
                ),
                Text('Images',style: TextStyle(
                    color:Color(0xff6F7375)
                ),),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.apps_rounded,color:Color(0xff6F7375)),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'M',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                  ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/img/3.png',height: 90,),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            width: 580,
            child: TextField(
              cursorColor: Colors.black,
              cursorWidth: 0.5,
               cursorHeight: 24,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                        color: Colors.grey,
                        // color: Color(0xff0C59D0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300,
                    ),
                  ),
                hintText: 'Search Google or type a URL',
                hintStyle: TextStyle(
                  color: Color(0xff6F7375),
                  fontSize: 15,
                  fontWeight: FontWeight.w100
                ),
                prefixIcon: Icon(Icons.search,color:Color(0xff6F7375)),
                suffixIcon: Icon(Icons.mic,color: Color(0xff6F7375),),

              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text(
                  'Google Search',style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff6F7375),
                ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                height: 35,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text(
                  "I'm Feeling Lucky",style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff6F7375),
                ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'New! ',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                  fontWeight: FontWeight.w600
                ),
              ),
              TextSpan(
                text: 'Google ',
                style: TextStyle(
                  color: Color(0xff6F7375),
                  fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
              TextSpan(
                text: 'Pixel 8a. ',
                style: TextStyle(
                  color: Color(0xff391990),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'The AI Phone, feachring Circle to Search',
                style: TextStyle(
                    color: Color(0xff6F7375),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),

            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'Google offered in: ',
                style: TextStyle(
                    color: Color(0xff6F7375),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
              TextSpan(
                text: ' हिन्दी বাংলা తెలుగు मराठी தமிழ் ગુજરાતી ಕನ್ನಡ മലയാളം ਪੰਜਾਬੀ',
                style: TextStyle(
                    color: Color(0xff391990),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),

            ]),
          ),
          SizedBox(
            height: 140,
          ),
          Container(
            height: 50,
            width: 1600,
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300
                )
              )
            ),
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25
              ),
              child: Text(
                'India'
              ),
            ),
          ),
          Container(
            height: 50,
            width: 1600,
            decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
            ),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                      'About',
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                      'Advertising',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                      'Business',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                      'How Search Works',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                      'Business',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 625
                  ),
                  child: Text(
                    'Privacy',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                    'Terms',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25
                  ),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
