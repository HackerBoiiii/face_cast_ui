import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Face Cast',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int intialindex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        initialIndex: intialindex,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor:Color(0xffFFB605),
            bottom: PreferredSize(
              preferredSize: Size(size.width, 20.0),
              child: Container(
                padding: EdgeInsets.only(right: 15),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  automaticIndicatorColorAdjustment: false,
                  tabs: [
                    Container(
                      width: size.width,
                      padding: EdgeInsets.only(left: 5, bottom: 30),
                      child: Row(
                        children: [
                          Text(
                            'Recharge',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: [
                          Text(
                            'Income',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [BuiltRecharge(), BuiltIcome(), BuiltHistory()],
          ),
        ),
      ),
    );
  }

  Widget BuiltRecharge() {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height / 1 / 3.5,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Color(0xffFFB605),
                          Color(0xffFFB620),
                          Color(0xffFFB650)
                        ])),
                        child: Stack(
                          children: [
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                    height: size.width/2.5,
                                    width: size.width/2.2,
                                    child: Image.asset(
                                      'lib/assets/images/diamond.png',
                                      fit: BoxFit.fill,
                                    ))),
                            Positioned(
                                left: 0,
                                top: 25,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Diamond Balance",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 92),
                                      child: Text('12',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ],
                                )),
                            Positioned(
                                top: 160,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    color: Colors.white,
                                    width: size.width,
                                    height: size.height,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xffFF654D),
                      Color(0xffF14A64),
                    ])),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 60,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Text(
                          'Free diamond Gifts and pack can be got for the first charge',
                          style: TextStyle(color: Colors.white),
                        )),
                        // ignore: deprecated_member_use
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: TextStyle(color: Color(0xffF75459)),
                          ),
                          shape: StadiumBorder(),
                          color: Color(0xffFDE5BE),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Color(0xffFFEED4),
                        padding: EdgeInsets.only(right: 10),
                        height: 60,
                        width: size.width,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Image.asset(
                                      'lib/assets/images/diamond2.png')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Up to'),
                                  Text(
                                    '50%',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('lib/assets/images/ring.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('x17 days'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ]),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('lib/assets/images/cae.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('x7 days'),
                                  ]),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('lib/assets/images/card.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('x7 days'),
                                  ])
                            ]),
                      ))),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png'),
                        ),
                        Text(
                          '60',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xffF5505E),
                              Color(0xffF6A656)
                            ])),
                            height: 20,
                            width: 80,
                            child: Text(
                              'First+50%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png'),
                        ),
                        Text(
                          '600',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+99',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png'),
                        ),
                        Text(
                          '3000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+199',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png',fit: BoxFit.fill,),
                        ),
                        Text('60'),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xffF5505E),
                              Color(0xffF6A656)
                            ])),
                            height: 20,
                            width: 80,
                            child: Text(
                              'First+50%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png'),
                        ),
                        Text('60'),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xffF5505E),
                              Color(0xffF6A656)
                            ])),
                            height: 20,
                            width: 80,
                            child: Text(
                              'First+50%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png'),
                        ),
                        Text('60'),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xffF5505E),
                              Color(0xffF6A656)
                            ])),
                            height: 20,
                            width: 80,
                            child: Text(
                              'First+50%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Color(0xffF7F7F7),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 70,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          child: Image.asset('lib/assets/images/diamond.png'),
                        ),
                        Text('60'),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xffF5505E),
                              Color(0xffF6A656)
                            ])),
                            height: 20,
                            width: 80,
                            child: Text(
                              'First+50%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        OutlinedButton(
                          child: Text(
                            '₹80.00',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BuiltIcome() {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(children: [
        Column(
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 0),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height / 1 / 3.5,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff18C7FC),
                        Color(0xff008EFE),
                        Color(0xff14BCFD)
                      ])),
                      child: Stack(
                        children: [
                          Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset(
                                    'lib/assets/images/wallet.png',
                                    color: Colors.blue,
                                    fit: BoxFit.fill,
                                  ))),
                          Positioned(
                              left: 0,
                              top: 25,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          "Diamond Balance",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 92),
                                    child: Text('12',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 50,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              )),
                          Positioned(
                              top: 160,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  color: Colors.white,
                                  width: size.width,
                                  height: size.height,
                                ),
                              )),
                        ],
                      ),
                    ),
                    // ignore: deprecated_member_use
                    Container(
                      width: size.width / 1.2,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Convert To Diamonds',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: StadiumBorder(),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width / 1.2,
              height: 50,
              child: OutlinedButton(
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: const Text("Cash Out",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
              ),
            ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child:Text('What is fcoin',textAlign: TextAlign.left,)
                ),
              ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child:Text('Store and retrieve user-generated files likeSelect your favorite social network and share our icons with your contacts or friends, if you do not have these social networks copy the link and paste it in the one you use. For more information',textAlign: TextAlign.left,)
              ),
            )

          ],
        ),
      ]),
    );
  }

  Widget BuiltHistory() {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: <Widget>[
        SizedBox( // Horizontal ListView
        height: 30,
        child: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black12,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('All'),SizedBox(width: 10,),
                  Text('Entertainment'),SizedBox(width: 10,),
                  Text('Videoes'),SizedBox(width: 10,),
                  Text('Live'),SizedBox(width: 10,),
                  Text('1-On-1',),SizedBox(width: 10,),
                  Text('Gift sent'),SizedBox(width: 10,),
                  Text('Gift received '),SizedBox(width: 10,),
                  Text('Recharge'),SizedBox(width: 10,),
                  Text('Chat'),SizedBox(width: 10,),
                  Text('Dating'),SizedBox(width: 10,),
                ],

              ),
            );
          },
        ),
      ),
  ]
    )
    );
  }
}
