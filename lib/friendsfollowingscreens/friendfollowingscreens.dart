import 'package:flutter/material.dart';

class FriendScreen extends StatefulWidget {
  @override
  _FriendScreenState createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: size.height * 0.05,
                ),
                SizedBox(
                  width: size.width * 0.07,
                ),
                Icon(
                  Icons.mail_outline_sharp,
                  color: Colors.grey,
                  size: size.height * 0.05,
                )
              ],
            )

          ],
          bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              width: size.width / 1.2,
              height: 30,
              child: TabBar(labelColor: Colors.white,

                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.white,
indicatorWeight: 10,
                indicator: BoxDecoration(
                    color: Colors.grey),
                tabs: [
                  Container(
                    child: Text(
                      'Following',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Friends',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            preferredSize: Size(
              size.width,
              20.0,
            ),
          ),
        ),
        body: TabBarView(
          children: [Following(), Friends()],
        ),
      ),
    );
  }

  Widget Following() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width/2,
            height: size.height/3,
           child: Image.network('https://1.bp.blogspot.com/-XsL8zuZYOUQ/YJv600Zm8vI/AAAAAAAADI4/FtraLYbVknodouKk7YmVk-u6oa0KoNW9QCLcBGAsYHQ/s685/Untitled-1.png',fit: BoxFit.fill,),
          ),
          SizedBox(
            height: size.height/18,
          ),
          Text('Moment no friends on LIVE',style: TextStyle(color: Colors.grey)),
          SizedBox(
            height: size.height/18,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: size.height / 16,
              color: Colors.deepPurpleAccent,
              child: Center(
                  child: Text(
                'Find some on LIVE',
                style: TextStyle(fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
              width: size.width / 1.3,
            ),
          )
        ],
      ),
    );
  }

  Widget Friends() {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width/2,
            height: size.height/3,
            child: Image.network('https://1.bp.blogspot.com/-XsL8zuZYOUQ/YJv600Zm8vI/AAAAAAAADI4/FtraLYbVknodouKk7YmVk-u6oa0KoNW9QCLcBGAsYHQ/s685/Untitled-1.png',fit: BoxFit.fill,),
          ),
          SizedBox(
            height: size.height/18,
          ),
          Text('Moment no friends on LIVE',style: TextStyle(color: Colors.grey)),
          SizedBox(
            height: size.height/18,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: size.height / 16,
              color: Colors.deepPurpleAccent,
              child: Center(
                  child: Text(
                    'Find some on LIVE',
                    style: TextStyle(fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
              width: size.width / 1.3,
            ),
          )
        ],
      ),
    );
  }
}
