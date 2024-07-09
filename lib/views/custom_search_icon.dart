import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;

  const CustomSearchIcon({this.icon = Icons.search, super.key, this.onPressed});

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed:onPressed,
       icon:  Icon(icon),
        color: Colors.white,

      ),
    );
  }
}
