class PostModel {
  final int id;
  final List<String>? likes;
  final String? caption;
  final String type;
  final int? reposts;
  final int? sent;
  final DateTime creationDate;
  final String content;
  final int authorId;
  final String authorName;
  final int? savedBy;

  PostModel({
    required this.id,
    required this.type,
    required this.creationDate,
    required this.content,
    required this.authorId,
    required this.authorName,
    this.likes,
    this.caption,
    this.reposts,
    this.sent,
    this.savedBy,
  });
}
