import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _Post;

  const Post._();

  String get postTitle => title == null ? '' : title!;

  String get postBody => body == null ? '' : body!;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  static List<Post> listOfPostFromJson(dynamic json) =>
      (json as List).map((e) => Post.fromJson(e)).toList();
}
