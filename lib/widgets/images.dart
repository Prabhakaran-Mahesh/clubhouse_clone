import 'package:clubhouse/constants/data.dart';
import 'package:clubhouse/widgets/userIcon.dart';
import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({
    Key? key,
    required this.rooms,
  }) : super(key: key);

  final Rooms rooms;

// * function to return the stacked userDp.
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 140,
        child: Stack(
          children: [
            Positioned(
                right: 50,
                top: 35.0,
                child: UserIcon(url: rooms.speakers[0].url)),
            Positioned(child: UserIcon(url: rooms.speakers[1].url)),
          ],
        ),
      ),
    );
  }
}
