import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class VideoPost extends StatefulWidget {
  const VideoPost({super.key});

  @override
  State<VideoPost> createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Text(
            "안녕",
            style: TextStyle(
              fontSize: Sizes.size11,
            ),
          ),
        ),
        Positioned(
            // top: -7,
            // left: 1,
            child: Column(
          children: [
            Text(
              ("니코11"),
              style: TextStyle(
                fontSize: Sizes.size20,
                color: Color.fromARGB(255, 15, 8, 8),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ))
      ],
    ));
  }
}
