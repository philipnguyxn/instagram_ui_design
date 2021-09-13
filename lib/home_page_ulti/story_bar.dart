import 'package:flutter/material.dart';

class StoryBar extends StatefulWidget {
  @override
  _StoryBarState createState() => _StoryBarState();
}

class _StoryBarState extends State<StoryBar> {
  List<String> profileImages = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage:
                      const AssetImage('assets/images/inta_story_ring.png'),
                  child: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage(profileImages[index]),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                const Text(
                  'Profile name',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: Colors.black87),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
