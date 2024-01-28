import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {

  final String textbutton;
  final   void Function()? onPressed;
  const CustomButton({Key? key, required this.textbutton,this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: MaterialButton(
        textColor: Colors.white,
        color: Colors.red,
        onPressed: onPressed,
        child:  Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
