import 'package:flutter/material.dart';
class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Explore',
        style: TextStyle(
            color: Colors.white,
          fontSize: 25,
          ),),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepPurple[700],
              borderRadius: BorderRadius.circular(20)
            ),
            child: Icon(
              Icons.wine_bar_outlined
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: Colors.deepPurple[700],
                borderRadius: BorderRadius.circular(20)
            ),
            child: Icon(
                Icons.shopping_cart

            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //component1 -- play and earn coins
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 30,height: 30,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text(
                          'Play and earn coins',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 70,),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )

                    ],
                  ),

                ),
                SizedBox(height: 14,),
                //component2-- Image
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('assets/images/banner.png',),
                    fit: BoxFit.fill,
                  ),
                ),
                //componenet 3-- subcription
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('All Subscriptions',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30,
                      ),),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 7),
                        child: Text('See More',
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                ),
                //component 4- horizontal scrollview of movies
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 150,width: 150,
                          child: Banner(
                            imageUrl: "assets/images/desney.png",
                            platform: "Disney + Hotstar",
                            price: "Starting at 245",
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height:150,width:150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Banner(
                            imageUrl: "assets/images/linkedIn.png",
                            platform: "LinkedIn",
                            price: "Starting at 599",
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 150,width: 150,
                          child: Banner(
                            imageUrl: "assets/images/ms.png",
                            platform: "Microsft Office",
                            price: "Starting at 4199",
                          ),
                        ),
                        SizedBox(width: 5,),

                      ],
                    ),
                  ),
                ),
                //component5-- public groups
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Public Groups',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white30,
                        ),),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 7),
                        child: Text('See More',
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                ),
                //component 6--each items of public groups
                Column(
                  children: [
                    ItemBox(
                      firstName: "Spotify Duo Plan...",
                      by: "by Priyam",
                      friends: "1/2 friends...",
                      ruppes: "900/User/Year",
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child:ItemBox(
                        firstName: "Spotify Duo Plan...",
                        by: "by Priyam",
                        friends: "1/2 friends...",
                        ruppes: "900/User/Year",
                      ) ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child:ItemBox(
                        firstName: "Spotify Duo Plan...",
                        by: "by Priyam",
                        friends: "1/2 friends...",
                        ruppes: "900/User/Year",
                      ) ,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child:ItemBox(
                        firstName: "Spotify Duo Plan...",
                        by: "by Priyam",
                        friends: "1/2 friends...",
                        ruppes: "900/User/Year",
                      ) ,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ItemBox extends StatelessWidget {
  final String firstName ;
  final String by;
  final String friends;
  final String ruppes;


  ItemBox({
    required this.firstName,
    required this.by,
    required this.friends,
    required this.ruppes,

  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.grey[850],
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:40,height:40 ,
                  child: Image(
                    image: AssetImage('assets/images/spotify1.png'),
                    //color: Colors.blue,
                    //colorFilter: ColorFilter.mode(Colors.red, BlendMode.color),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(firstName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    SizedBox(height: 5,),
                    Text(by,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    SizedBox(height: 5,),
                    Text(friends,
                      style: TextStyle(
                        color: Colors.blueAccent[100],
                        fontSize: 18,
                      ),),
                  ],
                ),
                Column(
                  children: [
                    Text(ruppes,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 35),
                      child: Text('Join',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 16,
                        ),),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 5,
            child: Row(
              children: [
                Container(color: Colors.deepPurple[700],width: 200,),
                Container(color: Colors.white,width: 172,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  final String imageUrl ;
  final String platform;
  final String price;



  Banner({
    required this.imageUrl,
    required this.platform,
    required this.price,

  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image(height: 150,
              image: AssetImage(imageUrl,
              ),
              fit: BoxFit.fill,
              color: Colors.grey[900],
              colorBlendMode: BlendMode.overlay,
            ),


          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey.withOpacity(0.1),Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(platform,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,fontWeight: FontWeight.w500),),
                Text(price,
                style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 18,fontWeight: FontWeight.w500),)
              ],
            ),
          )
        ],
      ),
    );
  }
}


