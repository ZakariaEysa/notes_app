import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;

  const CustomSearchIcon({this.icon = Icons.search, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
