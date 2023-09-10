import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              keyboardType: TextInputType.phone,
              decoration:const  InputDecoration(
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
              ),
            );
  }
}