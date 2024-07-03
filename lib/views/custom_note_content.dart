import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_text_field.dart';

import 'add_note_form.dart';
class CustomNoteContent extends StatelessWidget {
  const CustomNoteContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child:AddNoteForm(),
      ),
    );
  }
}

