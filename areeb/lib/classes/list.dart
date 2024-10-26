import 'package:areeb/classes/Artist.dart';
import 'package:areeb/classes/post.dart';


// artists 
Artist artist1 = Artist(
    username: "jano28",
    password: "janajana",
    imagePath: "assets/JanaPFP.jpeg",
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
    imagePath: "assets/renadPFP.jpeg",
    followersCount: 223,
    bio: "painting is life",
    location: "jeddah",
    displayName: "reno");



// visual arts 
// painters post OLD
Post post1 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost1.jpeg",
  artist1.displayName,
  title: "sunset",
  artist: artist1.username,
  description: "in this piece i wanted to capture this beatuiful sunset",
  subCategory: "painters",
);

Post post2 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost2.jpeg",
  artist2.displayName,
  title: "ocean",
  artist: artist2.username,
  description:
      "in this piece i wanted to resemble the ocean as much as i could",
  subCategory: "painters",
);

Post post3 = Post(
    DateTime(2024, 8, 28), "assets/PaintersPost3.jpeg", artist1.displayName,
    title: "colors mash",
    artist: artist1.username,
    description:
        "in this piece i wanted to show how beautfuil colors could mash together",
    subCategory: "painters");

Post post4 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost4.jpeg",
  artist2.displayName,
  title: "mountain view",
  artist: artist2.username,
  description: "capturing the serene beauty of a mountain landscape",
  subCategory: "painters",
);

Post post5 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost5.jpeg",
  artist1.displayName,
  title: "cityscape",
  artist: artist1.username,
  description: "depicting the bustling life of a city at night",
  subCategory: "painters",
);

Post post6 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost6.jpeg",
  artist2.displayName,
  title: "abstract chaos",
  artist: artist2.username,
  description: "exploring the concept of chaos through abstract art",
  subCategory: "painters",
);

Post post7 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost7.jpeg",
  artist1.displayName,
  title: "forest tranquility",
  artist: artist1.username,
  description: "capturing the peaceful essence of a forest",
  subCategory: "painters",
);

Post post8 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost8.jpeg",
  artist2.displayName,
  title: "modern architecture",
  artist: artist2.username,
  description: "exploring the sleek lines of modern buildings",
  subCategory: "painters",
);




// photography posts
Post post9 = Post(
  DateTime(2023, 7, 13),
  "assets/Photographerspost1.jpeg",
  artist3.displayName,
  title: "Rooftop",
  artist: artist3.username,
  description: "this is what i imagine adonis's rooftop to look like",
  subCategory: "Photographers",
);

Post post10 = Post(
  DateTime(2024, 5, 10),
  "assets/Photographerspost2.jpeg",
  artist2.displayName,
  title: "Wallflower",
  artist: artist2.username,
  description: "bury me in the trees, the flowers",
  subCategory: "Photographers",
);

Post post11 = Post(DateTime(2024, 10, 10), "assets/Photographerspost3.jpeg",
    artist1.displayName,
    title: "lookalike",
    artist: artist1.username,
    description: "Graceful silhouettes entwined in harmony",
    subCategory: "Photographers");

Post post12 = Post(
  DateTime(2023, 11, 18),
  "assets/Photographerspost4.jpeg",
  artist3.displayName,
  title: "Lost in contemplation",
  artist: artist3.username,
  description: "poised upon a stone, gazes into the vast expanse of the abyss",
  subCategory: "Photographers",
);

Post post13 = Post(
  DateTime(2023, 2, 19),
  "assets/Photographerspost5.jpeg",
  artist2.displayName,
  title: "Night's Embrace",
  artist: artist2.username,
  description: "Whispers of moonlight in her hands",
  subCategory: "Photographers",
);

Post post14 = Post(
  DateTime(2023, 12, 13),
  "assets/Photographerspost6.jpeg",
  artist1.displayName,
  title: "Silent Reverie",
  artist: artist1.username,
  description: "Amidst the veils of fog",
  subCategory: "Photographers",
);

Post post15 = Post(
  DateTime(2024, 9, 11),
  "assets/Photographerspost7.jpeg",
  artist3.displayName,
  title: "Street Symphony",
  artist: artist3.username,
  description: "each step a portrait of resilience and determination",
  subCategory: "Photographers",
);

Post post16 = Post(
  DateTime(2024, 8, 28),
  "assets/Photographerspost8.jpeg",
  artist2.displayName,
  title: "Women of Stone",
  artist: artist2.username,
  description:
      "Women, like pillars of strength, uphold the ancient echoes of Greek architecture",
  subCategory: "Photographers",
);
