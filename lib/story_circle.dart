import 'package:flutter/material.dart';

import 'models/user_model.dart';

class StoryCircle extends StatefulWidget {
  final User user;
  final String ppUrl;
  final VoidCallback onTap;
  bool hasUnwatchedStory;

  StoryCircle({
    required this.user,
    required this.ppUrl,
    required this.onTap,
    required this.hasUnwatchedStory,
  });

  @override
  _StoryCircleState createState() => _StoryCircleState();
}

class _StoryCircleState extends State<StoryCircle> {
  bool _hasUnwatchedStory = false;

  @override
  void initState() {
    super.initState();
    _hasUnwatchedStory = widget.hasUnwatchedStory;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(widget.ppUrl),
                ),
                /* if (_hasUnwatchedStory)
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.red,
                      border: Border.all(width: 2),
                    ),
                  ), */
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.user.username,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
