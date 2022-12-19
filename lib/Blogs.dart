// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zuluforumapp/Blogpage.dart';
import 'package:zuluforumapp/Donate.dart';
import 'package:zuluforumapp/FAQ.dart';
import 'package:zuluforumapp/about.dart';
import 'package:zuluforumapp/main.dart';
import 'package:zuluforumapp/views/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  CarouselSliderController _sliderController1 = CarouselSliderController();
  CarouselSliderController _sliderController2 = CarouselSliderController();
  Future<QuerySnapshot> getblogs() async {
    return await FirebaseFirestore.instance.collection('blogs').get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        centerTitle: true,
        title: Image.network(
          'https://mudittiwari.github.io/zuluforum/static/media/logo.aadb14f07383da1763e4.png',
          height: 24,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://mudittiwari.github.io/zuluforum/static/media/flag.e697d200682cdbc08480.gif',
              // height: 18,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (MyHomePage())));
              },
            ),
            ListTile(
              title: Text('Blogs'),
              // onTap: () {
              //    Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => (Blogpage())));
              // },
            ),
            ListTile(
              title: Text('Register Complain'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (RegisterForm())));
              },
            ),
            ListTile(
              title: Text('FAQs'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => (FAQ())));
              },
            ),
            ListTile(
              title: Text('About Me'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (About())));
              },
            ),
            ListTile(
              title: Text('Donate'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (Donate())));
              },
            )
          ],
        ),
      ),
      body: FutureBuilder(
        future: getblogs(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Center(child: Text(snapshot.error.toString()));
          } else {
            int index = 0;
            return SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 500,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => (Blogpage(
                                              id: snapshot.data!.docs[0].id
                                                  .toString())))));
                                },
                                child: Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 28.0),
                                          child: Text(
                                            snapshot.data!.docs[0]['title'],
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.bottomStart,
                                          children: [
                                            Container(
                                              height: 200,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Image.network(
                                                snapshot.data!.docs[0]['images']
                                                    [0],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional
                                                  .bottomEnd,
                                              child: Container(
                                                height: 50,
                                                width: 120,
                                                color: Colors.black,
                                                child: Center(
                                                  child: Text(
                                                    snapshot.data!.docs[0]
                                                        ['date'],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0),
                                          child: Text(
                                            snapshot.data!.docs[0]['desc']
                                                    .toString()
                                                    .substring(0, 300) +
                                                '.....',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0),
                                          child: Text(
                                            'Read More',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Divider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => (Blogpage(
                                              id: snapshot
                                                  .data!.docs[1].reference
                                                  .toString())))));
                                },
                                child: Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 28.0),
                                          child: Text(
                                            snapshot.data!.docs[1]['title'],
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.bottomStart,
                                          children: [
                                            Container(
                                              height: 200,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Image.network(
                                                snapshot.data!.docs[1]['images']
                                                    [0],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional
                                                  .bottomEnd,
                                              child: Container(
                                                height: 50,
                                                width: 120,
                                                color: Colors.black,
                                                child: Center(
                                                  child: Text(
                                                    snapshot.data!.docs[1]
                                                        ['date'],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0),
                                          child: Text(
                                            snapshot.data!.docs[1]['desc']
                                                    .toString()
                                                    .substring(0, 300) +
                                                '.....',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0),
                                          child: Text(
                                            'Read More',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Divider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 28.0),
                  child: Text(
                    "On Top:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    unlimitedMode: true,
                    controller: _sliderController1,
                    initialPage: 0,
                    children: snapshot.data!.docs.map((doc) {
                      return Builder(
                        builder: (BuildContext context) {
                          if (doc['ontop']) {
                            return Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 225,
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      children: [
                                        Container(
                                          height: 225,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Image.network(
                                            doc['images'][0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.bottomEnd,
                                          child: Container(
                                            height: 50,
                                            width: 120,
                                            color: Colors.black,
                                            child: Center(
                                              child: Text(
                                                doc['date'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(doc['title'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            );
                          } else
                            return Text("");
                        },
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Align(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 240, maxWidth: 600),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 18,
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              _sliderController1.previousPage(
                                Duration(milliseconds: 500),
                              );
                            },
                          ),
                          IconButton(
                            iconSize: 18,
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              _sliderController1.nextPage(
                                Duration(milliseconds: 500),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 28.0),
                  child: Text(
                    "Trending:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    unlimitedMode: true,
                    controller: _sliderController2,
                    initialPage: 0,
                    children: snapshot.data!.docs.map((doc) {
                      return Builder(
                        builder: (BuildContext context) {
                          if (doc['ontop']) {
                            return Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 225,
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      children: [
                                        Container(
                                          height: 225,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Image.network(
                                            doc['images'][0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.bottomEnd,
                                          child: Container(
                                            height: 50,
                                            width: 120,
                                            color: Colors.black,
                                            child: Center(
                                              child: Text(
                                                doc['date'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(doc['title'],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            );
                          } else
                            return Text("");
                        },
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Align(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 240, maxWidth: 600),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 18,
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              _sliderController2.previousPage(
                                Duration(milliseconds: 500),
                              );
                            },
                          ),
                          IconButton(
                            iconSize: 18,
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              _sliderController2.nextPage(
                                Duration(milliseconds: 500),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(FontAwesomeIcons.facebook, size: 40),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(FontAwesomeIcons.instagram, size: 40),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(FontAwesomeIcons.twitter, size: 40),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(FontAwesomeIcons.youtube, size: 40),
                            ),
                          ],
                        ),
                        Text(
                          'Copyright © 2022 Jagrukta Abhiyan.',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text('Designed, Developed & Maintained By ZITS',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.call),
                                  Text('9214581112',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ));
          }
        },
      ),
    );
  }
}
