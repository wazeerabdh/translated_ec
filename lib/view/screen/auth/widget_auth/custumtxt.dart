import 'package:flutter/material.dart';
import 'package:hijazi/models/core/constant/color.dart';
class CostumTxT extends StatefulWidget {
  final String ?hinttxt;
  final String? lable;
 final IconData? icon;
 final TextEditingController? controller;
 final String? Function(String?)? valid;
final isPassword;
  const CostumTxT({Key? key, this.valid,    this.isPassword = false , this.hinttxt, required this.lable,this.icon,  this.controller}) : super(key: key);

  @override
  State<CostumTxT> createState() => _CostumTxTState();
}

class _CostumTxTState extends State<CostumTxT> {
  bool inVisibe = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inVisibe == widget.isPassword;
  }
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 13),
      child: TextFormField(
        obscureText:      inVisibe,
       validator:widget.valid ,
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.hinttxt,
            hintStyle: const TextStyle(fontSize: 12,color: AppColor.black),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
            label:  Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(widget.lable!,style: TextStyle(fontSize: 12,color: AppColor.black),)),
            prefixIcon:  Icon(widget.icon),
            suffixIcon:    widget.isPassword
            ? IconButton(
            onPressed: () {
      setState(() {
      inVisibe = !inVisibe;
      });
      },
        icon: Icon(inVisibe
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,size: 15),
      )
            : null,
            border: OutlineInputBorder(borderSide: BorderSide(color: AppColor.black),
                borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
