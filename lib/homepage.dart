import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyTopBar(
          title: "Instagram",
        ),
    );
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
