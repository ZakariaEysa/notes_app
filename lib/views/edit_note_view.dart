import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/notes_list_cubit/notes_list_cubit.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'edit_note_list_view.dart';
class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomAppBar(title:"Edit Note",icon: Icons.check,onPressed: (){



              widget.note.title=title??widget.note.title;
              widget.note.subTitle=content??widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesListCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomTextField(
              onChanged: (p0) {

                title=p0;
              },

              hintText: widget.note.title,
              width: 1,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomTextField(
              onChanged: (p0) {

                content=p0;
              },
              hintText: widget.note.subTitle,
              width: 5,

            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EditNoteListView(note: widget.note,),
          )



        ],


      ),
    );
  }
}
