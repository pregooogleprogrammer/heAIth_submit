import 'package:flutter/material.dart';
import 'package:flutterworks/components/custom_elevated_button.dart';
import 'package:flutterworks/components/custom_text_form_field.dart';
import 'package:flutterworks/pages/user/login_page.dart';
import 'package:flutterworks/util/validator_util.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class JoinPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                height: 200,
                child: Text("회원가입",
                    style: TextStyle(fontSize:30, fontWeight: FontWeight.bold))),
            _joinForm(),
          ]
        )
      ),
    );
  }

  Widget _joinForm() {
    return Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  hint: "이름",
                  funValidator: validateUsername(),
                ),
                CustomTextFormField(
                  hint: "비밀번호",
                  funValidator: validatePassword(),
                ),
                CustomTextFormField(
                  hint: "이메일",
                  funValidator: validateEmail(),
                ),
                CustomElevatedButton(
                  text: "회원가입",
                  funPageRoute: () {
                    if(_formKey.currentState!.validate()){
                      Get.to(LoginPage());
                    }

                  }
                ),
                TextButton(
                  onPressed: () {
                    Get.to(JoinPage());
                  },
                  child: Text("로그인 페이지로 이동하기"),
                ),
              ]
            )
          );
  }
}



