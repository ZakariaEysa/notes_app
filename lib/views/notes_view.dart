import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';
import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff53EED8),
        shape: const StadiumBorder(),


        onPressed: () {

          customShowModalBottomSheet(context);

        }, child: const Icon(Icons.add, color: Colors.black,),),
      body: const NotesViewBody(),
    );
  }

  void customShowModalBottomSheet(BuildContext context) {
      showModalBottomSheet(
      context: context,
      builder: (context) =>
          BlocProvider(
            create: (context) => AddNoteCubit(),
            child: const AddNoteForm(),
          ),);
  }
}
