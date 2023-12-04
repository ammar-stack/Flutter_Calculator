import 'package:flutter/material.dart';

const Color amber = Colors.amber;

class MyButton extends StatelessWidget {
  final String title;
  final Color Bcolor; 
  final VoidCallback onPress;
  MyButton({super.key, required this.title , 
  this.Bcolor =const Color(0xffa5a5a5),
  required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Bcolor,
              shape: BoxShape.circle
            ),
            child: Center(
              child: Text(title, style:const TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ),
        ),
      ),
    );
      
  }
}