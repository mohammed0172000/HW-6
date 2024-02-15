
import 'package:flutter/material.dart';

class TextFiledW extends StatelessWidget {
   const TextFiledW({super.key,required this.textController, this.Name,  this.textController2, this.textController1,});
  final Name;

  final TextEditingController textController;
    final TextEditingController? textController1;
    final TextEditingController? textController2;



  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 140,
      height: 40,
      child: TextFormField(
        controller: textController, 
        decoration: InputDecoration(
          hintText:Name,
          // Input decoration
          border: const OutlineInputBorder(), // Border decoration
          labelText: Name, // Label text
        ),
      ),
    );
  }
}
