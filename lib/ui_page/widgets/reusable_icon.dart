import 'package:flutter/material.dart';

Icon bottomIcon({required IconData icon, required Color color}) {
  return Icon(
    icon,
    color: color,
    size: 30,
  );
}

CircleAvatar circleIcon({required Color color, required IconData icon}) {
  return CircleAvatar(
      backgroundColor: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ));
}

TextStyle bannerTextStyle({required Color color, required double size}) =>
    TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w400);
Icon bannerIcon({required IconData icon}) {
  return Icon(
    icon,
    color: Colors.pink.shade300,
  );
}
