// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zuluforumapp/FAQ.dart';
import 'package:zuluforumapp/main.dart';
import 'package:zuluforumapp/views/register.dart';
import 'package:zuluforumapp/views/verify.dart';

class OtpPage extends StatefulWidget {
  const OtpPage();

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: const Text(
                "Phone Verification",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Code is sent to Number 958758971 ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.25),
                                    blurRadius: 8.05,
                                    spreadRadius: 5.75,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.25),
                                    blurRadius: 8.05,
                                    spreadRadius: 5.75,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.25),
                                    blurRadius: 8.05,
                                    spreadRadius: 5.75,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.25),
                                    blurRadius: 8.05,
                                    spreadRadius: 5.75,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.25),
                                    blurRadius: 8.05,
                                    spreadRadius: 5.75,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.25),
                                    blurRadius: 8.05,
                                    spreadRadius: 5.75,
                                    offset: Offset(0, 0), // Shadow position
                                  ),
                                ],
                              ),
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Didn't receive code?"),
                        Text(
                          "Resend",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VerifyPage()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Confirm",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            )
          ],
        ),
      ),
    );
  }
}
