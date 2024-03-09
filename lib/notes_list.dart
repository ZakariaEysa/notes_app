import 'package:flutter/material.dart';

import 'Custom_note.dart';
class Notes_List extends StatelessWidget {
  const Notes_List({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {


       return Custom_Note();









    },  );







  }
}
