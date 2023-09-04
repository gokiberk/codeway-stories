import 'package:codeway/models/user_model.dart';

enum MediaType {
  image,
  video,
}

class Story {
  final String url;
  final MediaType media;
  final Duration duration;
  final DateTime postTime;
  final User user;
  bool watched;

  Story(
      {required this.url,
      required this.media,
      required this.duration,
      required this.postTime,
      required this.user,
      required this.watched});
}
