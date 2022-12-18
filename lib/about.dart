// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zuluforumapp/FAQ.dart';
import 'package:zuluforumapp/main.dart';
import 'package:zuluforumapp/views/register.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
              title: Text('Blogs'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (RegisterForm())));
              },
            ),
            ListTile(
              title: Text('Blogs'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => (FAQ())));
              },
            ),
            ListTile(
              title: Text('Blogs'),
              // onTap: () {
              //    Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => (About())));
              // },
            ),
            ListTile(
              title: Text('Blogs'),
              // onTap: () {
              //    Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => (Donate())));
              // },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: NetworkImage(
                            'https://mudittiwari.github.io/zuluforum/static/media/about.6e413c462ab0964bc031.png'),
                        width: 250,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Mr. Mahendra Daiman",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 18.0, bottom: 8),
                        child: const Text(
                          "About Me",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                      child: Text(
                        "I don't believe in bending the law in order to achieve the desired results. Everything can be acquired within the system if done in an appropriate manner. I am working with the public, for the public and to the public but I'll always remain lawful.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: Text(
                        "Our Public needs to know what's within the curtains. A proper system must be established to provide the public with the actual schemes and agendas. Transparency should be there for the public with the government. There must not be any kind of mistreatment knowingly or unknowingly.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: Text(
                        "The youth of our country is still not proper directed and this becomes the reason for our country's undermined growth. The unemployment is my topmost priority to be dealt. I am always in support of our youth and always there to guide them in case of any wrong or mistaken decision. All of this will be conquered with proper steps and unity of our people.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: Text(
                        "The public problems will be treated with certain such activities:",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Active suggestions",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Periodic reviews",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Silent remarks",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Transparent functioning",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Call support",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Government schemes",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Surveys and questions",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            // height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Etc.",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: Text(
                        "The people are my power and I am their servant.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
