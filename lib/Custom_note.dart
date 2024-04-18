// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_Note extends StatelessWidget {
  String note = '';
  String title = '';
  Custom_Note({
    super.key,
    required this.note,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 100,
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              note,
              style: TextStyle(
                height: 1.3,
                color: Colors.black.withOpacity(.4),
                fontSize: 25,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          //  Text("3 mars 2003",style: TextStyle(color: Colors.black.withOpacity(1)),),
        ],
      ),
    );
  }
}
