import 'package:flutter/material.dart';
import 'package:flutterworks/components/custom_elevated_button.dart';
import 'package:flutterworks/components/custom_text_form_field.dart';
import 'package:flutterworks/pages/post/home_page.dart';
import 'package:flutterworks/pages/post/search_page.dart';
import 'package:flutterworks/pages/user/join_page.dart';
import 'package:flutterworks/util/validator_util.dart';
import 'package:get/get.dart';


class UserInfo extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("병원 예약하기"),
            centerTitle: true,
            backgroundColor: Colors.green

        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                height: 200,
                child: Text("병원 예약하기",
                    style: TextStyle(fontSize:30, fontWeight: FontWeight.bold))),
            _loginForm(),

          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
        key: _formKey,
        child: Column(
            children: [
              CustomTextFormField(
                hint: "예약할 병원을 찾아주세요",
                funValidator: validateHospital(),
              ),

              TextButton(
                onPressed: () {
                  Get.to(SearchPage());
                },
                child: Text("대한병원협회에 등록된 병원인지 확인하세요."),
              ),

              CustomElevatedButton(
                text: "병원 예약하기",
                funPageRoute: () {
                  if(_formKey.currentState!.validate()){
                    Get.to(HomePage());
                  }
                },
              ),
            ]
        )
    );
  }
}



