class Post {
  final DateTime dateCreated;
  final String title;
  final String artist;
  final String description;
  final String subCategory;
  final String imagePath;
  Post(this.dateCreated, this.imagePath,
      {required this.title,
      required this.artist,
      required this.description,
      required this.subCategory});
}
