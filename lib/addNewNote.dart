import 'package:flutter/material.dart';
import 'package:notes_app/Custom_note.dart';
import 'package:notes_app/notes_list.dart';

class Add_New_Note {




  void CustombottomSheet(BuildContext context, String newNote) {
     showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) {
                newNote = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter your note here',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet
                const Notes_List().addNote(Custom_Note(note: newNote));
              },
              child: const Text('Add Note'),
            ),
          ],
        );
      },
    );
  }

}
