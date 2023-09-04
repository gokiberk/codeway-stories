import 'package:codeway/constants.dart';
import 'models/story_model.dart';
import 'models/user_model.dart';

final List<User> users = [
  User(
    username: 'gokiberk',
    ppUrl: 'https://dummyimage.com/50x50/666/fff&text=G',
  ),
  User(
    username: 'codeway',
    ppUrl: 'https://dummyimage.com/50x50/777/fff&text=C',
  ),
  User(
    username: 'flutter',
    ppUrl: 'https://dummyimage.com/50x50/333/fff&text=F',
  ),
  User(
    username: 'java',
    ppUrl: 'https://dummyimage.com/50x50/444/fff&text=J',
  ),
  User(
    username: 'apple',
    ppUrl: 'https://dummyimage.com/50x50/555/fff&text=A',
  ),
];

List<Story> stories = [
  Story(
    url: 'https://dummyimage.com/1920x1080/000/fff&text=F',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 20, 59, 59),
    user: users[2], //flutter
    watched: false,
  ),
  Story(
    url: 'https://dummyimage.com/1920x1080/000/fff&text=J',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 22, 59, 59),
    user: users[3], //java
    watched: false,
  ),
  Story(
    url: 'https://dummyimage.com/1920x1080/000/fff&text=A',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 9, 1, 12, 0, 0),
    user: users[4], //apple
    watched: false,
  ),
  Story(
    url:
        'https://images.pexels.com/photos/13931640/pexels-photo-13931640.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 20, 59, 59),
    user: users[0],
    watched: false,
  ),
  Story(
    url:
        'https://images.pexels.com/photos/15346748/pexels-photo-15346748/free-photo-of-pink-konditorei-aida-in-vienna.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 22, 59, 59),
    user: users[0],
    watched: false,
  ),
  Story(
    url:
        'https://images.pexels.com/photos/18045527/pexels-photo-18045527/free-photo-of-young-woman-standing-outside-and-holding-a-bouquet-of-sunflowers.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 23, 59, 59),
    user: users[0],
    watched: false,
  ),
  Story(
    url: 'https://dummyimage.com/1920x1080/000/fff&text=C',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 23, 59, 59),
    user: users[1], //codeway
    watched: false,
  ),
  Story(
    url:
        'https://images.pexels.com/photos/15346748/pexels-photo-15346748/free-photo-of-pink-konditorei-aida-in-vienna.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 23, 59, 59),
    user: users[1],
    watched: false,
  ),
  Story(
    url: 'https://dummyimage.com/1000x500/000/fff&text=W',
    media: MediaType.image,
    duration: imageDuration,
    postTime: DateTime(2023, 8, 31, 23, 59, 59),
    user: users[1],
    watched: false,
  ),
];
