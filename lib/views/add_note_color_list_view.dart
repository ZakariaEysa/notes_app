import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';

import '../constants.dart';
import 'item_color.dart';

class AddNoteColorListView extends StatefulWidget {
  const AddNoteColorListView({super.key});

  @override
  State<AddNoteColorListView> createState() => _AddNoteColorListViewState();
}

class _AddNoteColorListViewState extends State<AddNoteColorListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colorList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  currentIndex = index;

                  BlocProvider.of<AddNoteCubit>(context).color =
                      colorList[index];

                  setState(() {});
                },
                child: ItemColor(
                    isActive: currentIndex == index, color: colorList[index]));
          }),
    );
  }
}
