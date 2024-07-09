import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../notes_list_cubit/notes_list_cubit.dart';
import 'custom_add_bottom.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String ? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,

      child: Column(
        children: [
          const SizedBox(height: 25,),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },

            hintText: "Title", width: 1,),
          const SizedBox(height: 15,),


          CustomTextField(hintText: "Content", width: 5,


            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 60,),


          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomAddBottom(

                isLoading: state is AddNoteLoading?true:false,


                onTab: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel note = NoteModel(date: DateTime.now()
                        .toString(),
                        color: Colors.blue.value,
                        title: title!,
                        subTitle: subTitle!);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                //    BlocProvider.of<NotesListCubit>(context).fetchAllNotes();

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => CustomNoteContent(),));
                    // Navigator.pop(context, [title, subTitle]);
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },


              );
            },
          ),


        ],


      ),
    );
  }
}

