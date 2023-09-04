import 'package:codeway/data.dart';
import 'package:codeway/models/story_model.dart';
import 'package:meta/meta.dart';

class User {
  final String username;
  final String ppUrl;

  const User({required this.username, required this.ppUrl});

  get hasStoriesLeft => null;
  @override
  String toString() {
    return username.toString();
  }
}
