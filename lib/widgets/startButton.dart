import 'package:clubhouse/constants/contstraint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartRoomButton extends StatelessWidget {
  const StartRoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            height: 45,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: AppColor.AccentGreen,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: RichText(
              text: TextSpan(children: [
                WidgetSpan(
                  child: Icon(
                    CupertinoIcons.add,
                    size: 20.0,
                    color: AppColor.White,
                  ),
                ),
                TextSpan(
                  text: "  Start a room",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ]),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.AccentGrey.withOpacity(0.0),
                  AppColor.AccentGrey.withOpacity(0.9),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
