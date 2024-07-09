import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAddBottom extends StatelessWidget {
  const CustomAddBottom({super.key, this.onTab, this.isLoading = false});

  final bool isLoading;
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
        child: isLoading?const SizedBox(
          width: 24,
          height: 24,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ): const Center(
          child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        ),






      ),
    );
  }
}
