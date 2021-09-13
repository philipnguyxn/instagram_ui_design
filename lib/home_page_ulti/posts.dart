import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
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

  List<String> postImages = [
    'assets/images/post_1.jpg',
    'assets/images/post_2.jpg',
    'assets/images/post_3.jpg',
    'assets/images/post_4.jpg',
    'assets/images/post_5.jpg',
    'assets/images/post_6.jpg',
    'assets/images/post_7.jpg',
    'assets/images/post_8.jpg',
    'assets/images/post_9.jpg',
    'assets/images/post_10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundImage:
                        const AssetImage('assets/images/inta_story_ring.png'),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(profileImages[index]),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 1.0)),
                const Text(
                  'Profile name',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: Colors.black87),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                      size: 20,
                    ))
              ],
            ),
            Column(
              children: [
                Image.asset(
                  postImages[index],
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chat_bubble_outline_rounded,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        size: 30,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: 'Liked by'),
                        TextSpan(
                          text: ' Profile Name',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' and'),
                        TextSpan(
                          text: '  others',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Profile Name',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' Comments'),
                      ],
                    ),
                  ),
                  const Text(
                    'View all 234 comments',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w100,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
