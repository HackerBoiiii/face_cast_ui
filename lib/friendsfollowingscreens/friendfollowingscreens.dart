import 'package:flutter/material.dart';
class FriendScreen extends StatefulWidget {
  @override
  _FriendScreenState createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  actions: [

      Icon(Icons.search,color: Colors.grey,size: size.height*0.05,),
      SizedBox(
        width: size.width*0.07  ,
      ),
      Icon(Icons.mail_outline_sharp,color: Colors.grey,size: size.height*0.05,)
  ],
  bottom: PreferredSize(
      child: Container(
        width: size.width/1.2,
        height: 35,
        child: TabBar(
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,Colors.orange,
              ]
            )
          ),
          tabs: [
            Container(
              child: Text('Following',style: TextStyle(
                color: Colors.black
              ),),
            ),
            Container(
              child: Text('Friends',style: TextStyle(
                color: Colors.black
              ),),
            )

          ],
        ),
      ),
      preferredSize: Size(size.width, 20.0,),),
      ),
        body: TabBarView(
          children: [
            Following(),
            Friends()
          ],
        ),

      ),
    );
  }

  Widget Following(){
    Size size=MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                  fit: BoxFit.fill
              ),
            ),
          ),
SizedBox(
  height: 50,
),
Text('Moment no friends on LIVE'),
          SizedBox(
            height: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: size.height/16,
              color: Colors.deepPurpleAccent,
              child: Center(child: Text('Find some on Live',style: TextStyle(
                color: Colors.white
              ),)),
              width: size.width/1.3,

            ),
          )
        ],
      ),
    );
  }
  Widget Friends(){
    Size size=MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                  fit: BoxFit.fill
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text('Moment no friends on LIVE'),
          SizedBox(
            height: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: size.height/13,
              color: Colors.deepPurpleAccent,
              child: Center(child: Text('Find some on Live')),
              width: size.width/1.3,

            ),
          )
        ],
      ),
    );
  }
}
