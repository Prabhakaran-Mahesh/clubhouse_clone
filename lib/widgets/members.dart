import 'package:clubhouse/constants/contstraint.dart';
import 'package:clubhouse/constants/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  const Members({
    Key? key,
    required this.rooms,
  }) : super(key: key);

  final Rooms rooms;

// ! functions which returns the speaker name that appear on the cards.
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.0,
          ),
          ...rooms.speakers.map(
            (e) => Text(
              '${e.firstname + " " + e.lastname} 💭',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: AppColor.DarkBrown,
                fontSize: 17.0,
              ),
              children: [
                TextSpan(text: rooms.speakers.length.toString()),
                WidgetSpan(
                  child: Icon(CupertinoIcons.person_alt,
                      size: 20.0, color: AppColor.DarkBrown),
                ),
                TextSpan(
                    text: " /" +
                        (rooms.speakers.length +
                                rooms.followedBy.length +
                                rooms.others.length)
                            .toString()),
                WidgetSpan(
                  child: Icon(CupertinoIcons.chat_bubble_fill,
                      size: 20.0, color: AppColor.DarkBrown),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
