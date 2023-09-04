import 'package:codeway/data.dart';
import 'package:codeway/story_circle.dart';
import 'package:codeway/story_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'models/story_model.dart';
import 'models/user_model.dart';

void markAllStoriesAsUnwatched(List<Story> stories) {
  for (var story in stories) {
    story.watched = false;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openStory(User user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryScreen(
          stories: stories
              .where((story) => story.user.toString() == user.username)
              .toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('S T O R I E S W A Y'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.black,
            ),
            onPressed: () {
              markAllStoriesAsUnwatched(stories);
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 130,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      final userStories = stories
                          .where(
                              (story) => story.user.toString() == user.username)
                          .toList();
                      if (userStories.length > 0) {
                        return Column(
                          children: [
                            StoryCircle(
                              user: user,
                              ppUrl: user.ppUrl, // Add this line
                              onTap: () => _openStory(user),
                              hasUnwatchedStory:
                                  hasUnwatchedStory(stories, user),
                            ),
                          ],
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  bool hasUnwatchedStory(List<Story> stories, User user) {
    return stories.any((story) => story.user == user && !story.watched);
  }
}
