import 'package:flutter/cupertino.dart';

class Textemailtype extends StatelessWidget {
  const Textemailtype({this.s});
 final String s;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20.0,),
        Text('$s'),
      ],
    );
  }
}