import 'package:flutter/material.dart';
import '../../models/core/constant/color.dart';
import '../../models/core/constant/fontassets.dart';

class CustemText extends StatefulWidget  {
  final TextEditingController?  controller;
  final String? lable;
  final  String hintText;
  final int maxLains;
  final double size;
  final double bottom;
  final IconData? icon;
  final String? Function(String?)? vaid;
  final bool? enable;
final Color colors;
  // ignore: prefer_typing_uninitialized_variables
  final isPassword;
  const CustemText(
      {Key? key,
        this.controller,
         this.lable,
        this.maxLains = 1,
        this.icon,
        this.isPassword = false,
        this.hintText="",
        this.vaid, required this.size, this.enable=true,   this.bottom=20,   this.colors= AppColor.black, })
      : super(key: key);

  @override
  State<CustemText> createState() => _CustemTextState();
}

class _CustemTextState extends State<CustemText> {
  bool inVisibe = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inVisibe == widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin:   EdgeInsets.only(bottom:widget.bottom),
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: TextFormField(
        enabled: widget.enable,
        maxLines: widget.maxLains,
        // style: const TextStyle(fontSize: 11,fontWeight: FontWeight.bold),/**/
        obscureText: inVisibe,
        controller: widget.controller,keyboardType:TextInputType.emailAddress ,
        decoration: InputDecoration(
            labelStyle:    TextStyle(color: widget.colors,fontFamily: FontAssets.playfairDisplay,fontSize: widget.size,fontWeight: FontWeight.bold,),
            label: Text(widget.hintText!),
            prefixIcon: widget.icon != null ? Icon(widget.icon,color:AppColor.medium_grey ,size: 30,) : null,
            suffixIcon: widget.isPassword
                ? IconButton(
              onPressed: () {
                setState(() {
                  inVisibe = !inVisibe;
                });},
              icon: Icon(inVisibe
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,size: 15),
            )
                : null,
            hintText: widget.lable,
            hintStyle:  const TextStyle(color: AppColor.black,fontFamily: FontAssets.playfairDisplay,fontSize: 14,fontWeight: FontWeight.w600)

            ,border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Color(0xFFE0E0E0)))
        ),
        validator:widget.vaid,
      ),
    );
  }
}
String? validateEmailOrPhone(String value, String? msg1, String? msg2) {
  if (value.isEmpty) {
    return msg1;
  } else if (RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)"
      r"*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+"
      r"[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
      .hasMatch(value)) {
    return 'email';
  } else if (value.length == 9 &&
      (value.startsWith('73') ||
          value.startsWith('70') ||
          value.startsWith('71') ||
          value.startsWith('77') ||
          value.startsWith('78'))) {
    return 'phone';
  } else {
    return msg2;
  }
}