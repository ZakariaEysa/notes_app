import 'package:flutter/material.dart';

import 'Custom_note.dart';

class Notes_List extends StatelessWidget {
  const Notes_List({super.key});

  static List<Widget> List_of_Notes = [];

  void addNote(Custom_Note note) {
    List_of_Notes.add(note);
  }

  @override
  Widget build(BuildContext context) {
    return List_of_Notes.isEmpty
        ? Container(
            alignment: Alignment.center,
            child: const Text(
              "No Notes Found",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          )
        : ListView.builder(
            itemCount: List_of_Notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: List_of_Notes[index],
              );
            },
          );
  }
}
