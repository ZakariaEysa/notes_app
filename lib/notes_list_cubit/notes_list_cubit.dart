import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';

import '../models/note_model.dart';

part 'notes_list_state.dart';

class NotesListCubit extends Cubit<NotesListState> {
  NotesListCubit() : super(NotesListInitial());

  List<NoteModel>? notes;

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
