import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramPage(),
    );
  }
}

class InstagramPage extends StatelessWidget {
  final List<String> images = [
    "https://images.unsplash.com/photo-1524805444758-089113d48a6d?q=80&w=388&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1671269941569-7841144ee4e0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1719530910477-182ceb10b681?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1720502812105-159e4be400bb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMnx8fGVufDB8fHx8fA%3D%3D"
  ];
  final List number = ["110K", "123K", "569K", "1.7M"];
  final List name = ["Unfollow_o123", "Username_001", "user_1", "Bike_001"];
  final List dis = [
    "Dream is big",
    "just a beginig",
    "Make a happy face",
    "My life..."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text('Reels'),
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.home_filled,
      //           color: Colors.black,
      //         )),
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.arrow_back_rounded,
      //           color: Colors.black,
      //         ))
      //   ],
      // ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: IconButton(
                  icon: Icon(Icons.camera_alt, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              Positioned(
                  top: 20,
                  left: 20,
                  child: Text(
                    "Reels",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
              Positioned(
                bottom: 20,
                right: 20,
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {},
                    ),
                    Text(
                      number[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.comment, color: Colors.white),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://via.placeholder.com/150'), // User profile image
                        ),
                        SizedBox(width: 10),
                        Text(
                          name[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      dis[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
