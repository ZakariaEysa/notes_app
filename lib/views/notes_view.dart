import 'package:flutter/material.dart';

import 'add_note_bottom_sheet.dart';
import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      floatingActionButton: FloatingActionButton(

        backgroundColor: const Color(0xff53EED8),
        shape: const StadiumBorder(),
        onPressed: () {
          customShowModalBottomSheet(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }

  void customShowModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      isScrollControlled: true,
      context: context,
      builder: (context) => const AddNoteBottomSheet(),
    );
  }
}
