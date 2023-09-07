import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  final funValidator;
  final String? value;

  const CustomTextFormField({required this.hint, required this.funValidator, this.value});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        initialValue: value ?? "",
        validator: funValidator,
        obscureText: hint=="비밀번호" ? true : false,
        decoration: InputDecoration(
          hintText: "$hint",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

