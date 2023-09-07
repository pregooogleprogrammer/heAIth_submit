import 'package:flutter/material.dart';
import 'package:flutterworks/components/custom_elevated_button.dart';
import 'package:flutterworks/components/custom_text_form_field.dart';
import 'package:flutterworks/components/custom_textarea.dart';
import 'package:flutterworks/pages/post/home_page.dart';
import 'package:flutterworks/util/validator_util.dart';
import 'package:get/get.dart';

class WritePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("진단서 및 처방서 작성"),
          centerTitle: true,
          backgroundColor: Colors.green

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                  hint: "진단서-진단 연월일-진단요약",
                  funValidator: validateTitle()
              ),
              CustomTextArea(
                  hint: "진단, 진료 내용 및 처방전 작성",
                  funValidator: validateContent()
              ),
              CustomElevatedButton(
                  text: "작성 완료",
                  funPageRoute: () {
                    if(_formKey.currentState!.validate()){
                      Get.off(HomePage());
                    }

                  }

              )
            ]
          )
        ),

      )
    );
  }
}
