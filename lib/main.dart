// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zuluforumapp/Donate.dart';
import 'package:zuluforumapp/FAQ.dart';
import 'package:zuluforumapp/about.dart';
import 'package:zuluforumapp/views/otp.dart';
import 'package:zuluforumapp/views/register.dart';
import 'package:zuluforumapp/views/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  CarouselSliderController _sliderController1 = CarouselSliderController();
  CarouselSliderController _sliderController2 = CarouselSliderController();
  List<String> newscuttings = [
    "https://mudittiwari.github.io/zuluforum/static/media/1.46f1c32ddbb0187656d6.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/2.a3d7940cc7a04435d1d5.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/3.44168a27814414469780.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/4.d22c1647f5acf0ac0127.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/5.af200b3e4d73e5a8de01.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/6.77665ddf086ade644318.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/7.078eb5e46c74c9f89df3.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/8.128699f964fde2b262eb.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/9.e7754ddd5be88275eb12.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/10.a229ff75282ad6070ab0.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/11.72527bbbd74523183aa9.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/12.12c73e99cb43885ca509.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/13.21ff8acbff738dd22e90.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/14.a951ce7f2cca2bffdd1a.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/15.9ce94ae505728ad361fb.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/16.1413b7c4a765840fea01.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/17.5621098a742b5cbeebe0.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/18.61f24e91fbbea7c30458.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/19.247e0480fe9db551393c.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/20.af7c9b8b2fe6d6172a8d.jpg",
    "https://mudittiwari.github.io/zuluforum/static/media/3.44168a27814414469780.jpg",
  ];
  List<String> youtubevideos = [
    "https://youtu.be/Yq6mKYY50hg",
    "https://youtu.be/-O6oi60zRPw",
    "https://youtu.be/J2drjjKw3X4",
    "https://youtu.be/KvBD8-4uRfU",
    "https://youtu.be/JN4_jWNbI7M",
    "https://youtu.be/fTJPE2i0HVc",
  ];
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'Yq6mKYY50hg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: '-O6oi60zRPw',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: 'J2drjjKw3X4',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  YoutubePlayerController _controller4 = YoutubePlayerController(
    initialVideoId: 'JN4_jWNbI7M',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  YoutubePlayerController _controller5 = YoutubePlayerController(
    initialVideoId: 'fTJPE2i0HVc',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  YoutubePlayerController _controller6 = YoutubePlayerController(
    initialVideoId: 'Yq6mKYY50hg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (RegisterForm())));
                },
              ),
              ListTile(
                title: Text('FAQs'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (FAQ())));
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://mudittiwari.github.io/zuluforum/static/media/homepagetop.c57e02c41a20fc8edd86.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Row(children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Image(
                                image: AssetImage('assets/download.png'),
                                width: 100,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Cases Solved',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Image(
                                image: AssetImage('assets/download.png'),
                                width: 100,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Cases Solved',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Image(
                                image: AssetImage('assets/download.png'),
                                width: 100,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Cases Solved',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )),
                  ])),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://mudittiwari.github.io/zuluforum/static/media/homepage.b6700e14f8f184066181.jpeg'),
                        width: 250,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Mr. Mahendra Daiman",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, bottom: 8),
                        child: Text(
                          "Councillor NP, Bandikui",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                        child: Text(
                          "Service is the aim, Sahayang is our awareness campaign mission under the resolution, whose work is to make the general public aware of their rights, rights and education, unemployment. With this, our main objective is to help and cooperate with people in our mission.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Text(
                          "Mission Madad, an awareness campaign which has been supported by Mahendra Daiman and his associates over the years. The general public is deprived of basic needs and infrastructure including water, electricity, roads, employment, education and social development has been the main objective to make those needs self-sufficient.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Text(
                          "Our awareness campaign mission is to meet the needs of the citizens and help them in their personal, family, financial and the aim is to make self-reliant to fulfill the social obligations.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Text(
                          "Our mission in this awareness campaign is to make every common citizen self-reliant in social awareness and empathy and to make the labor and rural population financially and socially strong.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Container(
                height: 320,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  unlimitedMode: true,
                  controller: _sliderController1,
                  initialPage: 0,
                  children: newscuttings.map((image) {
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
                                height: 252,
                                child: Image.network(
                                  image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Press Coverage",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Container(
                height: 320,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                    controller: _sliderController2,
                    unlimitedMode: true,
                    // viewportFraction: 0.8,
                    initialPage: 0,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: YoutubePlayer(
                          controller: _controller1,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: YoutubePlayer(
                          controller: _controller2,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: YoutubePlayer(
                          controller: _controller3,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: YoutubePlayer(
                          controller: _controller4,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: YoutubePlayer(
                          controller: _controller5,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: YoutubePlayer(
                          controller: _controller6,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ]),
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
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
        ));
  }
}
