
// List listOfPaintersPosts = [post1, post2, post3];
// List listOfArtists = [artist1, artist2, artist3];

import 'Artist.dart';
import 'post.dart';

Artist artist1 = Artist(
    username: "jano28",
    password: "janajana",
    imagePath: "assets/pfp1",
    followersCount: 223,
    bio: "lover of culture",
    location: "jeddah",
    displayName: "jana");

Artist artist2 = Artist(
    username: "mayaa04",
    password: "mayamaya",
    imagePath: "assets/pfp1",
    followersCount: 223,
    bio: "your friendly neighbourhood sirem",
    location: "makkah",
    displayName: "mayaa");
    
Artist artist3 = Artist(
    username: "reno00",
    password: "renadrenad",
    imagePath: "assets/pfp1",
    followersCount: 223,
    bio: "painting is life",
    location: "jeddah",
    displayName: "reno");

Post post1 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost1.jpg",
  title: "sunset",
  artist: artist1.username,
  description: "in this piece i wanted to capture this beatuiful sunset",
  subCategory: "painters",
);

Post post2 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost2.jpg",
  title: "ocean",
  artist: artist1.username,
  description:
      "in this piece i wanted to resemble the ocean as much as i could",
  subCategory: "painters",
);

Post post3 = Post(DateTime(2024, 8, 28), "assets/PaintersPost3.jpg",
    title: "colors mash",
    artist: artist1.username,
    description:
        "in this piece i wanted to show how beautfuil colors could mash together",
    subCategory: "painters");

Post post4 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost4.jpg",
  title: "mountain view",
  artist: artist1.username,
  description: "capturing the serene beauty of a mountain landscape",
  subCategory: "painters",
);

Post post5 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost5.jpg",
  title: "cityscape",
  artist: artist1.username,
  description: "depicting the bustling life of a city at night",
  subCategory: "painters",
);

Post post6 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost6.jpg",
  title: "abstract chaos",
  artist: artist1.username,
  description: "exploring the concept of chaos through abstract art",
  subCategory: "painters",
);

Post post7 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost7.jpg",
  title: "forest tranquility",
  artist: artist1.username,
  description: "capturing the peaceful essence of a forest",
  subCategory: "painters",
);

Post post8 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost8.jpg",
  title: "modern architecture",
  artist: artist1.username,
  description: "exploring the sleek lines of modern buildings",
  subCategory: "painters",
);
