// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
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
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       ListTile(
      //         title: Text('Home'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => (MyHomePage())));
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Blogs'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => (Blogpage())));
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Blogs'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => (RegisterForm())));
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Blogs'),
      //         onTap: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => (FAQ())));
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Blogs'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => (About())));
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Blogs'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => (Donate())));
      //         },
      //       )
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Accordion(
                rightIcon: Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.black,
                ),
                headerBackgroundColor: Colors.white,
                children: [
                  AccordionSection(
                      contentBorderColor: Colors.white,
                      // ignore: prefer_const_constructors
                      header: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "How can i report my porblem?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      contentBackgroundColor: Colors.black,
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Any query, of generic nature, related to content, design, service or technological issues with respect to THIS.WEBSITE platform can be sent to through this customized Feedback interface.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )),
                  AccordionSection(
                      contentBorderColor: Colors.white,
                      // ignore: prefer_const_constructors
                      header: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Facing Problems regarding registration or login?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      contentBackgroundColor: Colors.black,
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "In case you are facing any problem regarding the registration or login process, please do get in touch with us through this form. We would be more than happy to get back to you and help in solving issues you may face while browsing and/or participating through THIS.WEBSITE, as we value your participation in THIS.WEBSITE.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )),
                  AccordionSection(
                      contentBorderColor: Colors.white,
                      // ignore: prefer_const_constructors
                      header: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "What are the documents required to file a complaint?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      contentBackgroundColor: Colors.black,
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Proof of possession of any government authorised identification card (Aadhaar Card, Voter's Identity Card,Driving License, etc). Documents",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )),
                  AccordionSection(
                      contentBorderColor: Colors.white,
                      // ignore: prefer_const_constructors
                      header: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Didn't find your suggestions on the platform?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      contentBackgroundColor: Colors.black,
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Do not hesitate to get in touch with us with the same we will address your issue at the earliest as we value your participation in the THIS.WEBSITE Platform.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )),
                  AccordionSection(
                      contentBorderColor: Colors.white,
                      // ignore: prefer_const_constructors
                      header: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Any other issue",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      contentBackgroundColor: Colors.black,
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Apart from the above mentioned category if you are facing any other issue with regard to the site, please do not hesitate to get in touch with us. Let us know about your problem with brief description of the issue which you are facing. We would be happy to revert back to you. Click here to view: User Manual - PDF (3.5 MB)",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ))
                ]),
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
