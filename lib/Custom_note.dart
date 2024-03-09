import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_Note extends StatelessWidget {
  const Custom_Note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 100,

      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.all(Radius.circular(13)),
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
              "Flutter tips ",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
            subtitle: Container(
              child: Text(
                "Build your career with Zakaria Eysa ",
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Text("3 mars 2003",style: TextStyle(color: Colors.black.withOpacity(1)),),
        ],
      ),
    );
  }
}
