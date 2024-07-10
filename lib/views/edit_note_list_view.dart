import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import '../constants.dart';
import 'item_color.dart';

class EditNoteListView extends StatefulWidget {
  const EditNoteListView({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteListView> createState() => _EditNoteListViewState();
}

class _EditNoteListViewState extends State<EditNoteListView> {
    @override
    Widget build(BuildContext context) {

      int currentIndex = colorList.indexOf(Color(widget.note.color));

      return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
            itemCount: colorList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    currentIndex = index;

                    widget.note.color= colorList[index].value;



                 setState(() {});
                  },
                  child: ItemColor(
                      isActive: currentIndex == index, color: colorList[index]));
            }),
      );
  }
}
