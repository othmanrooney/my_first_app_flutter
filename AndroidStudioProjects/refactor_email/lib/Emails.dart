import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Emails extends StatelessWidget {
  const Emails({this.TextFormFields});
final TextFormField TextFormFields;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20.0,),
        Expanded(
          child: TextFormFields,
        ),
        SizedBox(width: 20.0,),
      ],
    );
  }
}
