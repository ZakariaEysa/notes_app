import 'package:flutter/material.dart';
import 'package:notes_app/notes_list.dart';

import 'Custom_note.dart';
class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Notes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),),
         ),
          actions: [


               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   width: 50,
                    height: 70,
                    decoration: BoxDecoration(

                      borderRadius:
                          BorderRadius.circular(16),
                      color: Colors.white70.withOpacity(.05),

                    ),


                    child: Center(child: Icon(Icons.search,size: 40,))),
               ),


          ],
       ),
         floatingActionButton: FloatingActionButton(

           onPressed: () {





           },
           child: const Icon(Icons.add),
         ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Notes_List(),
       ),

     );
  }
}
