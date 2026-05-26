class PostModel {
  final int id;
  final List<dynamic>? likes;
  final String? caption;
  final String type;
  final int? reposts;
  final int? sent;
  final DateTime creationDate;
  final String content;
  // final int authorId;
  final String authorName;
  final int? savedBy;

  PostModel({
    required this.id,
    required this.type,
    required this.creationDate,
    required this.content,
    // required this.authorId,
    required this.authorName,
    this.likes,
    this.caption,
    this.reposts,
    this.sent,
    this.savedBy,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      // authorId: int.parse(json["author_id"]),
      content: json["content"],
      creationDate: DateTime.parse(json["creation_date"]),
      id: int.parse(json["id"].toString()),
      type: json["type"],
      authorName: json["author_name"],
      caption: json["caption"],
      likes: json["likes"],
      reposts: json["reposts"],
      savedBy: json["savrd_by"],
      sent: json["sent"],
    );
  }
}
