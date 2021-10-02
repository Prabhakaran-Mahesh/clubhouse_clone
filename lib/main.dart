import 'package:clubhouse/widgets/clubBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:clubhouse/constants/data.dart';
import 'package:get/get.dart';

import 'constants/contstraint.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColor.LightBrown,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClubHouse',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: AppColor.LightBrown,
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(
              color: AppColor.Black,
            )),
        scaffoldBackgroundColor: AppColor.LightBrown,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ! list that holds the icons of the appbar which is placed in actions
    var iconList = [
      IconButton(
        icon: Icon(
          CupertinoIcons.envelope_open,
          size: 22.0,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          CupertinoIcons.calendar,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          CupertinoIcons.bell,
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
      )
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.search),
        actions: iconList,
      ),
      body: ClubBody(),
    );
  }
}
