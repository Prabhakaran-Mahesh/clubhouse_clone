import 'package:clubhouse/constants/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chatroom.dart';
import 'images.dart';
import 'members.dart';

class ClubRooms extends StatelessWidget {
  final Rooms rooms;

  const ClubRooms({
    Key? key,
    required this.rooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          Get.to(ChatRoom(room: rooms));
        },

        // ! card that holds the room
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${rooms.header.toUpperCase()} 🏠',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  rooms.title,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Images(rooms: rooms),
                    Members(rooms: rooms),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
