import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/notes_list_cubit/notes_list_cubit.dart';

import 'edit_note_view.dart';

class NoteItem extends StatelessWidget {

  final NoteModel note;

  const NoteItem({super.key, required this.note});


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){

      Navigator.push(context, MaterialPageRoute(builder:
          (context) {
        return  EditNoteView(note: note,);
      }

        ,));

    },

      child:  Container(
        margin: const EdgeInsets.all(8),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          color:  Color(note.color)
        ),


        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(



              title:  Text(note.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffFFCD79) ),),

              subtitle: Padding(
                padding:  const EdgeInsets.only(top: 16),
                child: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(.2),fontSize: 20),),
              ),
              trailing:  IconButton(onPressed: ()  {

                note.delete();
                BlocProvider.of<NotesListCubit>(context).fetchAllNotes();


              },icon: const Icon(Icons.delete,size: 20,color: Colors.black), ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12,right: 16),
              child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.2),fontSize: 18),),
            )
          ],
        ),

       ),

    );
  }
}
