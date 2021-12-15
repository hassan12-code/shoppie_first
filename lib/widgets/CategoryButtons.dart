import 'package:flutter/material.dart';

class categoryButtons extends StatelessWidget {
  final String text; 
  const categoryButtons({
    Key? key, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Container(
          height: 20,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
             boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2,
              ),
          ],
          ),
          child: Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
        ),
    ),
      ),);
  }
}