// @dart=2.9
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:revenau/componenets/Products.dart';
import 'package:revenau/pages/Cartorwishlist.dart';

// my own imports

import 'package:revenau/componenets/horizontal_listview.dart';
import 'package:revenau/componenets/Products.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

int toggle = 1;

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 375),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // this codes removes the shadow of appbar
        elevation: 90,
        backgroundColor: Colors.black12,
        title: Text(
          'Revenau',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),

        actions: <Widget>[
          //=================================upper icon buttons========================
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),

          new IconButton(
              icon: Icon(
                Icons.history,
                color: Colors.black,
              ),
              onPressed: () {
                //press korle Cartorwishlist page e chole jabe
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new CartorWishlist()));
              })
          //=================================upper icon buttons================================================end
        ],
      ),
      // ===================================== navigation drawer================================================start
      drawer: Theme(
        data: Theme.of(context).copyWith(
          // Set the transparency here
          canvasColor: Colors
              .transparent.withOpacity(0.0), //or any other color you want. e.g Colors.blue.withOpacity(0.5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: new Drawer(
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Container(
                child: new ListView(
                  children: <Widget>[
                    //header
                    new UserAccountsDrawerHeader(
                      accountName: Text("Hasnat karim "),
                      accountEmail: Text("example@gmail.com  "),
                      currentAccountPicture: GestureDetector(
                        child: new CircleAvatar(
                          backgroundColor: Colors.amberAccent,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),

                    //nav drawer body
                    // Inkwell ta wrap with widget e ana
                    //==================================drawer option start============================================================#########
                    InkWell(
                      onTap: () {}, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 20.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('My Account '),
                          leading: Icon(
                            Icons.account_box,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {}, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('Home page'),
                          leading: Icon(
                            Icons.home,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        //press korle Cartorwishlist page e chole jabe
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new CartorWishlist()));
                      }, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('My Orders'),
                          leading: Icon(
                            Icons.history,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {}, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('Catagories'),
                          leading: Icon(
                            Icons.collections,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {}, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('Favourites'),
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        //press korle Cartorwishlist page e chole jabe
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new CartorWishlist()));
                      }, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('Wishlist'),
                          leading: Icon(
                            Icons.history,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),

                    Divider(),

                    InkWell(
                      onTap: () {}, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('Settings'),
                          leading: Icon(
                            Icons.settings,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {}, // onTap child gulo k button e convert kore
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ListTile(
                          //title sathe icon
                          title: Text('About'),
                          leading: Icon(
                            Icons.help,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                    //=====================================
                    //===============================
                    // ==================================drawer option end============================================================#########
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      // ===================================== navigation drawer================================================end
      body: new ListView(
        children: <Widget>[
          //==============mainPAGE HEADER===========================================================start
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 5.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("What are you loking for?",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)),
                Text("Get a review now!",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0)),
              ],
            ),
          ),
          //==============mainPAGE HEADER===========================================================end

          //======================================normal search bar==================================start

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(1, 1),
                )
              ],
            ),
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.amberAccent,
              ),
              title: TextField(
                decoration: InputDecoration(
                    hintText: "Find for get a reveiw",
                    border: InputBorder.none),
              ),
              trailing: Icon(
                Icons.filter_list,
                color: Colors.amberAccent,
              ),
            ),
          ),
          //======================================normal search bar==================================end

          //===============================Animated search bar==========================================start
          new Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.white10,
                child: Center(
                  child: Container(
                    height: 100.0,
                    width: 250.0,
                    alignment: Alignment(-1.0, 0.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      height: 48.0,
                      width: (toggle == 0) ? 48.0 : 300.0,
                      curve: Curves.easeOut,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: -10.0,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 20.0),
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 375),
                            top: 6.0,
                            left: 7.0,
                            curve: Curves.easeOut,
                            child: AnimatedOpacity(
                              opacity: (toggle == 0) ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 200),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: AnimatedBuilder(
                                  child: Icon(
                                    Icons.mic,
                                    size: 20.0,
                                  ),
                                  builder: (context, widget) {
                                    return Transform.rotate(
                                      angle: controller.value * 2.0 * pi,
                                      child: widget,
                                    );
                                  },
                                  animation: controller,
                                ),
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 375),
                            left: (toggle == 0) ? 20.0 : 40.0,
                            top: 13.0,
                            curve: Curves.easeOut,
                            child: AnimatedOpacity(
                              duration: Duration(milliseconds: 200),
                              opacity: (toggle == 0) ? 0.0 : 1.0,
                              child: Container(
                                height: 23,
                                width: 180,
                                child: TextField(
                                  cursorRadius: Radius.circular(10.0),
                                  cursorWidth: 2.0,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    labelText: "Search...",
                                    labelStyle: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.amberAccent,
                            //=====search icon round color
                            borderRadius: BorderRadius.circular(30.0),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (toggle == 0) {
                                    toggle = 1;
                                    controller.forward();
                                  } else {
                                    toggle = 0;
                                    controller.reverse();
                                  }
                                });
                              },
                              icon: Icon(Icons.search),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          //===============================Animated search bar==========================================End

          // ===========================image carousel begin here=========================================start
          Container(
            height: 200.0,
            width: 300.0,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(2),
            alignment: Alignment.bottomRight,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage(
                  'images/hotes.jpg',
                ),
                AssetImage('images/restaurants.jpg'),
                AssetImage('images/buses.jpg'),
                AssetImage('images/burger shop.jpg'),
              ],
              autoplay: true,
              borderRadius: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(microseconds: 70000),
              dotSize: 6.0,
              dotSpacing: 30,
              dotColor: Colors.amberAccent,
              indicatorBgPadding: 2.0,
              dotBgColor: Colors.transparent,
              overlayShadow: true,
              overlayShadowColors: Colors.white60,
              overlayShadowSize: 0.2,
            ),
          ),
          // ===========================image carousel =====================================================end

          //=================================slideview===================================================start
          Container(
            height: 270,
            width: 250,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //itemCount:destinations.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 300,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[Text("rggfgdf")]),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 20.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 180,
                                width: 300,
                                image: AssetImage('images/buses.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //=================================slideview===================================================end
          // ===========================image carousel begin here=========================================start

          // ===========================image carousel begin here=========================================end

          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Text('Catagories off'),
          ),
          // Horizontal listview begins here
          //HorizontalList(),

          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Suggetion",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),

          //grid view
          Container(height: 680.0, width: 50, child: Products()),
        ],
      ),
    );
  }
}
