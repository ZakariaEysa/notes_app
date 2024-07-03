import 'package:flutter/material.dart';

import 'custom_add_note.dart';
import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:const Color(0xff53EED8) ,
        shape: const StadiumBorder(),



        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => const CustomAddNote(),);

        },child: const Icon(Icons.add,color: Colors.black,),),
     body: const NotesViewBody(),
    );
  }
}
