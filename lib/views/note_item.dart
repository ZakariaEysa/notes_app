import 'package:flutter/material.dart';

import 'edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){

      Navigator.push(context, MaterialPageRoute(builder:
          (context) {
        return const EditNoteView();
      }

        ,));

    },

      child:  Container(
        margin: const EdgeInsets.all(8),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCD79)
        ),


        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(


              title: const Text("title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Build your career with ziko",style: TextStyle(color: Colors.black.withOpacity(.2),fontSize: 20),),
              ),
              trailing: const IconButton(icon: Icon(Icons.delete,size: 20,color: Colors.black), onPressed: null),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12,right: 16),
              child: Text("may 12 /3/2003",style: TextStyle(color: Colors.black.withOpacity(.2),fontSize: 18),),
            )
          ],
        ),

       ),

    );
  }
}
