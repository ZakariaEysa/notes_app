import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_text_field.dart';
class CustomNoteContent extends StatelessWidget {
  const CustomNoteContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
          CustomTextField(hintText: "Title",width: 1,),
            SizedBox(height: 15,),
        
        
            CustomTextField(hintText: "Content",width: 5,),
            SizedBox(height: 80,),


        
        
          ],
        
        
        
        
        ),
      ),
    );
  }
}
