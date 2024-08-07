import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/notes_list_cubit/notes_list_cubit.dart';

import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});


  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {


  @override
  void initState() {
    BlocProvider.of<NotesListCubit>(context).fetchAllNotes();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(


        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: "Notes",),
          Expanded(
            child: NotesListView(),


          )


        ],
      ),
    );
  }
}
