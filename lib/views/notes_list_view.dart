import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/notes_list_cubit/notes_list_cubit.dart';

import '../models/note_model.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesListCubit, NotesListState>(

      builder: (context, state) {
        List<NoteModel>listOfNotes=BlocProvider.of<NotesListCubit>(context).notes??[];


        return ListView.builder(
            itemCount: listOfNotes.length ,
            itemBuilder: (context, index) {

              return  NoteItem(note:listOfNotes[index]);
            });
      },
    );
  }
}
