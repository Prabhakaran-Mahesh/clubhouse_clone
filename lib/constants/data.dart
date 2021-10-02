import 'package:clubhouse/constants/contstraint.dart';

// * class for User Data
class User {
  final String firstname;
  final String lastname;
  final String url;

  User({
    required this.firstname,
    required this.lastname,
    required this.url,
  });
}

// ! User class for the User of the app
User mainUser = new User(
  firstname: "Jookate's",
  lastname: "FLutter",
  url:
      "https://yt3.ggpht.com/woJZZuE72boD13Sn7XfWWcmPqA5XHmKpKvgts5v-y3Y19u1elHaq-Kil6z6nCs-5PIhvbIwR6A=s600-c-k-c0x00ffffff-no-rj-rp-mo",
);

// * list of users
List<User> allUsers = [
  User(
    firstname: "Clarke",
    lastname: "Griffin",
    url: images[0],
  ),
  User(
    firstname: "Bellamy",
    lastname: "Blake",
    url: images[1],
  ),
  User(
    firstname: "Octavia",
    lastname: "Blake",
    url: images[2],
  ),
  User(
    firstname: "John",
    lastname: "Murphy",
    url: images[3],
  ),
  User(
    firstname: "Marcus",
    lastname: "Kane",
    url: images[4],
  ),
  User(
    firstname: "Madi",
    lastname: "Griffin",
    url: images[5],
  ),
  User(
    firstname: "Raven",
    lastname: "Rayes",
    url: images[6],
  ),
  User(
    firstname: "Lexa",
    lastname: "Kom Trikru",
    url: images[7],
  ),
  User(
    firstname: "Monty",
    lastname: "Green",
    url: images[8],
  ),
  User(
    firstname: "Jasper",
    lastname: "Jorden",
    url: images[9],
  ),
];

// * Class for defining a room
class Rooms {
  final String header;
  final String title;
  final List<User> speakers;
  final List<User> followedBy;
  final List<User> others;

  Rooms({
    required this.header,
    required this.title,
    required this.speakers,
    required this.followedBy,
    required this.others,
  });
}

// * List of rooms
List<Rooms> allRooms = [
  Rooms(
    header: "Lets Music",
    title: "Morning with Melody",
    speakers: (List<User>.from(allUsers)..shuffle())
        .getRange(0, 4)
        .toList(), // ! suffeled and four speakers are choosen
    followedBy: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Rooms(
    header: "Homies In",
    title: "Lets Chillax in the morning",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBy: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Rooms(
    header: "Entertainment",
    title: "when is the first Valimai Update ",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBy: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Rooms(
    header: "Fun with Games",
    title: "Indoor or outdoor - which will you prefer",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBy: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  )
];
