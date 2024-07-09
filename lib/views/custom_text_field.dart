import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

   const CustomTextField({required this.hintText, super.key, required this.width, this.onSaved, this.onChanged});

  final String hintText;
  final int width;

 final  void Function(String?)? onSaved;
   final  void Function(String?)? onChanged;



   @override
  Widget build(BuildContext context) {




    return TextFormField(

      onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if(value?.isEmpty ?? true){

            return "Field can't be empty";
          }
          else {
            return null;
          }
        },
      cursorColor: const Color(0xff53EED8),


    //  style: const TextStyle(color: Color(0xff53EED8),fontSize: 18),
      maxLines:width,
      decoration:  InputDecoration(
          border:buildBorder(),
          enabledBorder: buildBorder(),
        focusedBorder: buildBorder(const Color(0xff53EED8)),

        hintText: hintText,hintStyle: const TextStyle(color: Color(0xff53EED8),fontSize: 18),
      ),
    );
  }
}
OutlineInputBorder buildBorder([Color color = Colors.white]) {
  return  OutlineInputBorder(borderSide: BorderSide(color:color),
  );



}