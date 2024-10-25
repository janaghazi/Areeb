import 'package:areeb/classes/Artist.dart';
import 'package:areeb/classes/post.dart';


Artist artist1 = Artist(
    username: "jano28",
    password: "janajana",
    imagePath: "assets/pfp.jpeg",
    followersCount: 223,
    bio: "lover of culture",
    location: "jeddah",
    displayName: "jana");

Artist artist2 = Artist(
    username: "mayaa04",
    password: "mayamaya",
    imagePath: "assets/MayaPFP.jpg",
    followersCount: 223,
    bio: "your friendly neighbourhood sirem",
    location: "makkah",
    displayName: "mayaa");

Artist artist3 = Artist(
    username: "reno00",
    password: "renadrenad",
    imagePath: "assets/pfp.jpeg",
    followersCount: 223,
    bio: "painting is life",
    location: "jeddah",
    displayName: "reno");

Post post1 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost1.jpg",
  artist1.displayName,
  title: "sunset",
  artist: artist1.username,
  description: "in this piece i wanted to capture this beatuiful sunset",
  subCategory: "painters",
);

Post post2 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost2.jpg",
  artist2.displayName,
  title: "ocean",
  artist: artist2.username,
  description:
      "in this piece i wanted to resemble the ocean as much as i could",
  subCategory: "painters",
);

Post post3 = Post(DateTime(2024, 8, 28), "assets/PaintersPost3.jpg",
    artist1.displayName,
    title: "colors mash",
    artist: artist1.username,
    description:
        "in this piece i wanted to show how beautfuil colors could mash together",
    subCategory: "painters");

Post post4 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost4.jpg",
  artist2.displayName,
  title: "mountain view",
  artist: artist2.username,
  description: "capturing the serene beauty of a mountain landscape",
  subCategory: "painters",
);

Post post5 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost5.jpg",
  artist1.displayName,
  title: "cityscape",
  artist: artist1.username,
  description: "depicting the bustling life of a city at night",
  subCategory: "painters",
);

Post post6 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost6.jpg",
  artist2.displayName,
  title: "abstract chaos",
  artist: artist2.username,
  description: "exploring the concept of chaos through abstract art",
  subCategory: "painters",
);

Post post7 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost7.jpg",
  artist1.displayName,
  title: "forest tranquility",
  artist: artist1.username,
  description: "capturing the peaceful essence of a forest",
  subCategory: "painters",
);

Post post8 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost8.jpg",
  artist2.displayName,
  title: "modern architecture",
  artist: artist2.username,
  description: "exploring the sleek lines of modern buildings",
  subCategory: "painters",
);
