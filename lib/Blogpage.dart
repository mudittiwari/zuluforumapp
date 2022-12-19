// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zuluforumapp/Blogs.dart';
import 'package:zuluforumapp/Donate.dart';
import 'package:zuluforumapp/FAQ.dart';
import 'package:zuluforumapp/about.dart';
import 'package:zuluforumapp/main.dart';
import 'package:zuluforumapp/views/register.dart';

class Blogpage extends StatefulWidget {
  final String id;
  const Blogpage({Key? key, required this.id}) : super(key: key);

  @override
  State<Blogpage> createState() => _BlogpageState();
}

class _BlogpageState extends State<Blogpage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  CarouselSliderController _sliderController1 = CarouselSliderController();
  CarouselSliderController _sliderController2 = CarouselSliderController();
  Future<DocumentSnapshot> getblog() async {
    print(widget.id);
    return await FirebaseFirestore.instance
        .collection('blogs')
        .doc(widget.id)
        .get();
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (Blogs())));
              },
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
        future: getblog(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Center(child: Text(snapshot.error.toString()));
          } else {
            int index = 0;
            // print(snapshot.data!.data());
            print(snapshot.data!['images']);
            return SingleChildScrollView(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(snapshot.data!['title'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(snapshot.data!['subtitle'],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text('Published On: ' + snapshot.data!['date'],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: NetworkImage(snapshot.data!['images'][0]),
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Container(
                    color: Color(0xffd9d9d9),
                    width: 200,
                    height: 40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(snapshot.data!['caption'],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(snapshot.data!['desc'],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider(
                      unlimitedMode: true,
                      controller: _sliderController1,
                      initialPage: 0,
                      children: snapshot.data!['images'].map<Widget>((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 300,
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.network(
                                      image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Align(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minWidth: 240, maxWidth: 600),
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
                                child:
                                    Icon(FontAwesomeIcons.facebook, size: 40),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child:
                                    Icon(FontAwesomeIcons.instagram, size: 40),
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
              ),
            ));
          }
        },
      ),
    );
  }
}
