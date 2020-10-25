import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Emails.dart';
import 'constant.dart';
import 'emailtype.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0,),

            Textemailtype(s: 'DEFAULT WITHOUT VALUE',),

            SizedBox(height: 9.0,),
            Emails(TextFormFields: TextFormField(
              decoration: InputDecoration(
                border: k,
                hintText: "Enter Email",
              ),
          autofocus: false,
            ),
            ),
            SizedBox(height: 10.0,),
            Textemailtype(s: 'DEFAULT REQUIRED WITHOUT ',),
            SizedBox(height: 9.0,),
            Emails(TextFormFields:TextFormField(
              decoration: InputDecoration(
                border:k,
                hintText: "Enter Email",
              ),
            validator: (text){
               if (text == null || text.isEmpty) {
                 return 'Text is empty';
               }
               return null;
            }
            ),
            ),
            SizedBox(height: 10.0,),

            Textemailtype(s: 'DEFAULT WITH VALUE',),

            SizedBox(height: 9.0,),
            Emails(TextFormFields: TextFormField(
              decoration:InputDecoration(
                border: k,
                labelText: 'Email',
              ),
            ),
            ),
            SizedBox(height: 10.0,),

            Textemailtype(s: 'FOCUSED WITH VALUE',),

            SizedBox(height: 9.0,),
           Emails(TextFormFields: TextFormField(
             decoration:InputDecoration(
               border: k,
               labelText: 'Email',
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black),
               ),
             ),

           ),
           ),
            SizedBox(height: 10.0,),

            Textemailtype(s: 'FOCUSED WITHOUT VALUE',),

            SizedBox(height: 9.0,),
            Emails(TextFormFields: TextFormField(
              decoration:InputDecoration(
                border: k,
               hintText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              style: TextStyle(
                  decoration: TextDecoration.none
              ),
            ),
            ),
            SizedBox(height: 10.0,),

            Textemailtype(s: "ERROR WITH VALUE ",),

            SizedBox(height: 9.0,),
            Emails(TextFormFields: TextFormField(
              decoration:InputDecoration(
                border:k,
                labelText: 'Email',
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.black)
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            ),
            SizedBox(height: 20.0,),

          ],

        ),
      ),
    );
  }
}
String validatePassword(String value) {
  if (!(value.length > 5) && value.isNotEmpty) {
    return "Password should contain more than 5 characters";
  }
  return null;
}


