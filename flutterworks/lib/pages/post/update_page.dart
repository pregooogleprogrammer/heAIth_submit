import 'package:flutter/material.dart';
import 'package:flutterworks/components/custom_elevated_button.dart';
import 'package:flutterworks/components/custom_text_form_field.dart';
import 'package:flutterworks/components/custom_textarea.dart';
import 'package:flutterworks/pages/post/detail_page.dart';
import 'package:flutterworks/pages/post/home_page.dart';
import 'package:flutterworks/util/validator_util.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("진단서 및 처방서 수정"),
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
                        hint: "제목, 진료 세부분야",
                        funValidator: validateTitle(),
                        value: "진단서-2023.09.07-고혈압성 신장질환",
                    ),
                    CustomTextArea(
                        hint: "진단, 진료 내용",
                        funValidator: validateContent(),
                        value: "\n환자의 성명: 김채현\n\n환자의 주민등록번호: 000000-000000\n\n환자의 주소: 서울특별시 AI길 AI0\n\n병명: 고혈압성 심장병\n\n질병분류번호: I11\n\n발병 연월일: 2023년 9월 2일\n\n진단 연월일: 2023년 9월 7일\n\n치료 내용 및 향후 치료에 대한 소견: 자기관리 및 꾸준한 약 복용\n\n입원, 퇴원: -\n\n비고: -\n\n*******************\n\n처방전\n\n2023-03-22 진단서 및 처방전에 혈관부종으로 인해 내원함. '안지오텐신, 안지오텐신Ⅱ 수용체 차단제(혈관부종 환자의 경우 복용 불가)' 대신 이뇨제 성분의 '아모잘탄플러스정(643507800)'을 처방.",
                    ),
                    CustomElevatedButton(
                        text: "수정 완료",
                        funPageRoute: () {
                          if(_formKey.currentState!.validate()){
                            Get.back();
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
