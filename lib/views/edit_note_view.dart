import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'add_note_bottom_sheet.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomAppBar(title:"Edit Note",icon: Icons.check,),
          ),
          AddNoteBottomSheet()



        ],


      ),
    );
  }
}
