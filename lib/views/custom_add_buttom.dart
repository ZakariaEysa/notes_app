import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAddButtom extends StatelessWidget {
  const CustomAddButtom({super.key, this.onTab});
  final Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTab,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color:  kPrimaryColor,
          borderRadius: BorderRadius.circular(16)
        ),
        child: const Center(
          child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        ),






      ),
    );
  }
}
