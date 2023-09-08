import 'package:flutter/material.dart';

myContainer(String title, double width, double height, Color color) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      border: Border.all(
        color: Colors.black,
        width: 3,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

myAppBar(Color foregroundColor, Color backgroundColor, String title,
    double elevation) {
  return AppBar(
    foregroundColor: foregroundColor,
    backgroundColor: backgroundColor,
    centerTitle: true,
    title: Text(title),
    elevation: elevation,
  );
}
