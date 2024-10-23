class Artist {
  final String username;
  final String password;
  final String imagePath;
  final int followersCount;
  final String bio;
  final String location;
  final String displayName;
  Artist(
      {required this.username,
      required this.password,
      required this.imagePath,
      required this.followersCount,
      required this.bio,
      required this.location,
      required this.displayName});
}
