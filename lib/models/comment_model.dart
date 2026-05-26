class CommentModel {
  final int id;
  final String text;
  final DateTime datePublished;
  final int likes;
  final String authorNickname;
  final int postId;

  CommentModel({
    required this.id,
    required this.text,
    required this.datePublished,
    required this.likes,
    required this.authorNickname,
    required this.postId,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    int teyParseInt(dynamic value) {
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;

      return 0;
    }

    return CommentModel(
      id: teyParseInt(json['id']),
      text: json['text'],
      datePublished: DateTime.parse(json['date_published']),
      likes: teyParseInt(json['likes']),
      authorNickname: json['author_nickname'],
      postId: teyParseInt(json['post_id']),
    );
  }
}
