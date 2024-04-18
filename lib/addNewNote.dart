import 'package:flutter/material.dart';
import 'package:notes_app/Custom_note.dart';
import 'package:notes_app/notes_list.dart';

import 'Custom_text_feild.dart';

class Add_New_Note {
  void CustombottomSheet(BuildContext context, String newNote,String Title) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                CustomTextFeild(),
              ],
            ),
          ),
        );
      },
    );
  }
}





/*   child: Column(
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
          ),   */
