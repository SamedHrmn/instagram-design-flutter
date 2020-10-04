import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String FONT_PROXIMA = "ProximaNova";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyTopBar(
        title: "Instagram",
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            //Story Section--------------------------------
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  getStories(
                      username: "Ayse", avatarPath: "assets/story_image1.jpg"),
                  getStories(
                      username: "Fatma", avatarPath: "assets/story_image2.jpg"),
                  getStories(
                      username: "Hayriye",
                      avatarPath: "assets/story_image3.jpg"),
                  getStories(
                      username: "Cemal", avatarPath: "assets/story_image4.jpg"),
                  getStories(
                      username: "Mahmut",
                      avatarPath: "assets/story_image5.jpg"),
                  getStories(
                      username: "Ayse", avatarPath: "assets/story_image1.jpg"),
                  getStories(
                      username: "Fatma", avatarPath: "assets/story_image2.jpg"),
                  getStories(
                      username: "Hayriye",
                      avatarPath: "assets/story_image3.jpg"),
                  getStories(
                      username: "Cemal", avatarPath: "assets/story_image4.jpg"),
                  getStories(
                      username: "Mahmut",
                      avatarPath: "assets/story_image5.jpg"),
                ],
              ),
            ),

            Divider(
              height: 4,
              color: Colors.grey,
            ),

            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        getContentPost(
                            username: "Ayse Robinson",
                            avatarPath: "assets/story_image1.jpg",
                            postPath: "assets/post_image1.jpg"),
                        getContentPost(
                            username: "Fatma Anderson",
                            avatarPath: "assets/story_image2.jpg",
                            postPath: "assets/post_image2.jpg"),
                        getContentPost(
                            username: "Hayriye Jackson",
                            avatarPath: "assets/story_image3.jpg",
                            postPath: "assets/post_image3.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getStories({String username, String avatarPath}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 6, left: 8, right: 8),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(avatarPath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: Colors.pink, width: 1)),
        ),
        Text(
          username,
          style: TextStyle(fontFamily: FONT_PROXIMA, fontSize: 12),
        )
      ],
    );
  }

  Widget getContentPost({String username, String avatarPath, String postPath}) {
    return Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(avatarPath),
            ),
          ),
          Text(
            username,
            style: TextStyle(
                fontFamily: FONT_PROXIMA, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(postPath), fit: BoxFit.cover)),
      ),
      Container(
        //color: Colors.blueAccent,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              Icons.favorite_border,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Transform(
              transform: Matrix4.rotationY(math.pi),
              alignment: Alignment.center,
              child: Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            RotationTransition(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Icon(Icons.send, size: 26),
              ),
              turns: AlwaysStoppedAnimation(-25 / 360),
            ),
            Spacer(),
            Icon(
              Icons.bookmark_border,
              size: 30,
            ),
          ],
        ),
      )
    ]);
  }
}

class MyTopBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  final Size preferredSize;

  MyTopBar({this.title, this.backgroundColor})
      : preferredSize = Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 8,
        child: Container(
          height: 50,
          color: backgroundColor,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              Spacer(),
              Text(
                "Instagram",
                style: TextStyle(fontFamily: "Billabong", fontSize: 28),
              ),
              Spacer(),
              RotationTransition(
                child: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
                turns: AlwaysStoppedAnimation(-15 / 360),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
