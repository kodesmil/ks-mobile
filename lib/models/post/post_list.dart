import 'package:boilerplate/models/post/post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_list.g.dart';

@JsonSerializable(nullable: false)
class PostsList {
  final List<Post> posts;

  PostsList({
    this.posts,
  });

  factory PostsList.fromJson(Map<String, dynamic> json) => _$PostsListFromJson(json);

  Map<String, dynamic> toJson() => _$PostsListToJson(this);
}
