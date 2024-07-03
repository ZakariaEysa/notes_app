import 'package:flutter/material.dart';

import 'custom_add_buttom.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
   const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String ? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,

        child: Column(
          children: [
            SizedBox(height: 25,),
            CustomTextField(
              onSaved: (value) {
                title=value;


              },

              hintText: "Title",width: 1,),
            SizedBox(height: 15,),


            CustomTextField(hintText: "Content",width: 5,


              onSaved: (value) {
                subTitle=value;



            },
            ),
            SizedBox(height: 80,),



            CustomAddButtom(

              onTab: () {

                if(formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                 // Navigator.pop(context, [title, subTitle]);
                }else {

                  setState(() {
                    autoValidateMode = AutovalidateMode.always;
                  });
                }



              },


            ),





          ],




        ),
      ),
    );
  }
}

