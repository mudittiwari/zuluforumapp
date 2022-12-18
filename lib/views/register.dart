// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zuluforumapp/FAQ.dart';
import 'package:zuluforumapp/main.dart';
import 'package:zuluforumapp/views/otp.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm();

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: size.width * 0.05, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: const Text(
                      "Complaint Registration Form",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.only(left: 10, bottom: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    height: 35,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.only(left: 10, bottom: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    height: 35,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.only(left: 10, bottom: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    height: 35,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Address",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.only(left: 10, bottom: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    height: 35,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Department",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.only(left: 10, bottom: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    height: 35,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Title",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: 120,
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Desription....",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Attach File",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpPage()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
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
