import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:clubhouse/constants/contstraint.dart';
import 'package:clubhouse/constants/data.dart';
import 'package:clubhouse/widgets/userIcon.dart';

class ChatRoom extends StatelessWidget {
  final Rooms room;
  const ChatRoom({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120.0,
        leading: TextButton.icon(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColor.Black,
          ),
          label: Text(
            "Hallway",
            style: TextStyle(
              color: AppColor.Black,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.doc,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(mainUser.url),
            radius: 15.0,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                40.0,
              ),
              color: AppColor.White,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 25.0,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${room.header.toUpperCase()} 🏠'),
                            Icon(CupertinoIcons.ellipsis),
                          ],
                        ),
                        Text(
                          room.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: room.speakers
                        .map(
                          (e) => RoomIcon(e: e),
                        )
                        .toList(),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 15.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        "Followed by speakers",
                        style: TextStyle(
                          color: AppColor.AccentGrey,
                        ),
                      ),
                    ),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: room.followedBy
                        .map(
                          (e) => RoomIcon(e: e),
                        )
                        .toList(),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 15.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        "Others in the room",
                        style: TextStyle(
                          color: AppColor.AccentGrey,
                        ),
                      ),
                    ),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: room.others
                        .map(
                          (e) => RoomIcon(e: e),
                        )
                        .toList(),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(top: 70.0),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 70,
                color: AppColor.White,
                child: Row(
                  children: [
                    SizedBox(
                      width: 14.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.SelectedItemBorderGrey,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "✌ Leave quietly",
                            style: TextStyle(
                              color: AppColor.AccentRed,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.add_circled_solid,
                        color: AppColor.AccentGrey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.hand_raised,
                        color: AppColor.AccentGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RoomIcon extends StatelessWidget {
  final User e;
  const RoomIcon({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserIcon(
          url: e.url,
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          e.firstname,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
