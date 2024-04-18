import 'package:flutter/material.dart';
import 'package:notes_app/addNewNote.dart';
import 'package:notes_app/notes_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Notes",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white70.withOpacity(.05),
                ),
                child: const Center(
                    child: Icon(
                  Icons.search,
                  size: 40,
                ))),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String newNote = '';

          Add_New_Note().CustombottomSheet(context, newNote, '');
          setState(() {
            Notes_List.List_of_Notes;
            const Notes_List();
          });

          // return Container(
          //   child: Add_New_Note(),

          // );
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Notes_List(),
        // child: Add_New_Note(),
      ),
    );
  }
}
