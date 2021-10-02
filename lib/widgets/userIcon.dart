import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  final String url;
  const UserIcon({
    Key? key,
    required this.url,
  }) : super(key: key);

  final double size = 68;

  // ! make the user dp into a good shape.
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child: Image.network(
        url,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
