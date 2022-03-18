class PostModel {
  final String? username;
  final String? image;
  final String? text;
  final int? totalLikes;
  final int? totalShares;
  final int? totalComments;
  final String? date;

  PostModel({
    this.username,
    this.image,
    this.text,
    this.totalLikes,
    this.date,
    this.totalComments,
    this.totalShares,
  });

}