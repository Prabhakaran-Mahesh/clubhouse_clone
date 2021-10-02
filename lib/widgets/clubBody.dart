import 'package:clubhouse/constants/data.dart';
import 'package:clubhouse/widgets/clubrooms.dart';
import 'package:clubhouse/widgets/startButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ! Holds the widgets placed in the main screen of the app ie., the rooms and the start room button.
class ClubBody extends StatelessWidget {
  const ClubBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            SizedBox(
              height: 5.0,
            ),
            ...allRooms.map((room) => ClubRooms(rooms: room)),
          ],
        ),
        StartRoomButton(),
      ],
    );
  }
}
