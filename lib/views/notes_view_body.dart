import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'note_item.dart';
class  NotesViewBody extends StatelessWidget {
  const  NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(



        children: [
          const SizedBox(height: 50,),
           const CustomAppBar(title: "Notes",),
         Expanded(

           child: ListView.builder(itemCount:15,itemBuilder: (context, index) {

             return   const NoteItem();

           },),
         )


        ],
      ),
    );
  }
}
